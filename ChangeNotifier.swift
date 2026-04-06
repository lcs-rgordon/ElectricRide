//
//  ChangeNotifier.swift
//  ElectricRide
//
//  Created by Russell Gordon on 2025-05-31.
//


import OSLog
import Supabase
import SwiftUI
 
@Observable @MainActor
class ChangeNotifier: Observable {
 
    // MARK: Stored properties
    
    // Subscribing views will monitor this property
    // and ask their view models to refresh data when
    // it changes
    var changeCount = 0
        
    // Stores a channel that we will subscribe to
    // and receive realtime updates from
    private var channel: RealtimeChannelV2?
    
    // Track if we're already subscribed to avoid duplicate subscriptions
    private var isSubscribed = false
    
    // MARK: Initializer(s)
    init() {
        
        Logger.database.info("ChangeNotifier: Initializer has completed.")
        
        // Note: We do NOT subscribe here because the user hasn't
        // authenticated yet. We'll subscribe after sign-in.
        
	}
    
    // MARK: Function(s)
    func subscribe() {
        
        // Don't subscribe if already subscribed
        guard !isSubscribed else {
            Logger.database.info("ChangeNotifier: Already subscribed, skipping.")
            return
        }
        
        Logger.database.info("ChangeNotifier: About to create channel to receive realtime updates.")
        
        // Check if we have a valid session
        guard let session = supabase.auth.currentSession else {
            Logger.database.error("ChangeNotifier: No auth session found, cannot subscribe to realtime.")
            return
        }
        
        // Check if the session is expired
        if session.isExpired {
            Logger.database.error("ChangeNotifier: Auth session is expired, cannot subscribe to realtime.")
            return
        }
        
        Logger.database.info("ChangeNotifier: Valid auth session exists, proceeding with subscription.")
        
        // IMPORTANT: Use a unique channel name!
        // Using UUID ensures no conflicts with previous connections
        let channel = supabase.channel(UUID().uuidString)
        self.channel = channel
 
        Logger.database.info("ChangeNotifier: Successfully created channel with unique ID.")
 
        // Create observation for changes BEFORE subscribing
        // This is the async stream approach that works in your other project
        let savedStream = channel.postgresChange(
            AnyAction.self,
            schema: "public",
            table: "saved"
        )
        
        Logger.database.info("ChangeNotifier: Created stream for 'saved' table.")
        
        let listingsStream = channel.postgresChange(
            AnyAction.self,
            schema: "public",
            table: "listings"
        )
        
        Logger.database.info("ChangeNotifier: Created stream for 'listings' table.")
        
        let vehicleStream = channel.postgresChange(
            AnyAction.self,
            schema: "public",
            table: "vehicle"
        )
        
        Logger.database.info("ChangeNotifier: Created stream for 'vehicle' table.")
		
        Task {
            
            Logger.database.info("ChangeNotifier: About to subscribe to channel...")
            
            // Subscribe to notifications on the channel
            await channel.subscribe()
            
            // Mark as subscribed
            await MainActor.run {
                self.isSubscribed = true
            }
 
            Logger.database.info("ChangeNotifier: Subscribe call completed.")
            
            // Listen to all three streams concurrently
            async let savedTask: Void = {
                for await change in savedStream {
                    await MainActor.run {
                        Logger.database.info("ChangeNotifier: ⭐️ Change detected in 'saved' table!")
                        switch change {
                        case .delete(let action):
                            Logger.database.info("ChangeNotifier: Deleted - \(action.oldRecord)")
                        case .insert(let action):
                            Logger.database.info("ChangeNotifier: Inserted - \(action.record)")
                        case .update(let action):
                            Logger.database.info("ChangeNotifier: Updated - \(action.oldRecord) with \(action.record)")
                        }
                        self.changeCount += 1
                        Logger.database.info("ChangeNotifier: Change count is now: \(self.changeCount)")
                    }
                }
            }()
            
            async let listingsTask: Void = {
                for await change in listingsStream {
                    await MainActor.run {
                        Logger.database.info("ChangeNotifier: ⭐️ Change detected in 'listings' table!")
                        self.changeCount += 1
                    }
                }
            }()
            
            async let vehicleTask: Void = {
                for await change in vehicleStream {
                    await MainActor.run {
                        Logger.database.info("ChangeNotifier: ⭐️ Change detected in 'vehicle' table!")
                        self.changeCount += 1
                    }
                }
            }()
            
            // Wait for all tasks
            await savedTask
            await listingsTask
            await vehicleTask
            
        }
        
    }
    
    func unsubscribe() {
        Logger.database.info("ChangeNotifier: About to unsubscribe from realtime updates channel.")
        Task {
            if let channel = channel {
                await supabase.removeChannel(channel)
                self.isSubscribed = false
                Logger.database.info("ChangeNotifier: Successfully unsubscribed from realtime updates channel.")
            } else {
                Logger.database.info("ChangeNotifier: Could not unsubscribe from realtime updates channel.")
            }
 
        }
    }
        
}

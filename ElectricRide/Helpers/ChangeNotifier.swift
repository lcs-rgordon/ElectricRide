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
    
    // MARK: Initializer(s)
    init() {
        
        Logger.database.info("ChangeNotifier: Initializer has completed.")
        
    }
    
    // MARK: Function(s)
    func subscribe() {
        
        Logger.database.info("ChangeNotifier: About to create channel to receive realtime updates.")
 
        // Create a channel with a unique name to receive realtime updates
        // Using UUID ensures no conflicts with previous connections
        let channelName = UUID().uuidString
        Logger.database.info("ChangeNotifier: Channel name will be: \(channelName)")
        self.channel = supabase.channel(channelName)

        if let channel = self.channel {
 
            Logger.database.info("ChangeNotifier: Successfully created channel to receive realtime updates.")
 
            // We are going to observe all changes
            // (insertions, updates, deletions)
            // on the "saved" table in the database
            let changeStream = channel.postgresChange(
                AnyAction.self,
                schema: "public",
                table: "saved"
            )
            
            Logger.database.info("ChangeNotifier: Successfully created stream to monitor 'saved' table changes.")
        
            Task {
                
                // Subscribe to notifications on the channel
                // Note: Using subscribeWithError to handle potential subscription errors
                do {
                    try await channel.subscribeWithError()
                    Logger.database.info("ChangeNotifier: Now subscribed to channel to receive realtime updates.")
                } catch {
                    Logger.database.error("ChangeNotifier: Failed to subscribe to channel: \(error)")
                    return
                }
 
                // When a change occurs, run this code block
                for await _ in changeStream {
                    
                    Logger.database.info("ChangeNotifier: Database changed; incrementing change counter.")
 
                    // Update the count of changes to tell subscribing views
                    // to ask their view models to update
                    changeCount += 1
                    
                }
                
            }
 
        } else {
            
            Logger.database.info("ChangeNotifier: Unable to create channel to receive realtime updates.")
 
        }
        
    }
    
    func unsubscribe() {
        Logger.database.info("ChangeNotifier: About to unsubscribe from realtime updates channel.")
        Task {
            if let channel = channel {
                await supabase.removeChannel(channel)
                Logger.database.info("ChangeNotifier: Successfully unsubscribed from realtime updates channel.")
            } else {
                Logger.database.info("ChangeNotifier: Could not unsubscribe from realtime updates channel.")
            }
 
        }
    }
        
}

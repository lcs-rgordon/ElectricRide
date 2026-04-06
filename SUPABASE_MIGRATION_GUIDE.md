# Supabase SDK 2.43.0 Migration Guide

This document summarizes the changes required to migrate from Supabase SDK 2.24.1 to 2.43.0 in the ElectricRide app.

## Overview

The migration involved three main areas:
1. Realtime subscription API changes
2. Authentication client configuration updates
3. Session expiration handling

---

## 1. Realtime Subscription Changes

### Issue: Deprecated `subscribe()` Method

**Warning:**
```
'subscribe()' is deprecated: Use `subscribeWithError` instead
```

### Solution

**Before (SDK 2.24.1):**
```swift
// Subscribe to notifications on the channel
await channel.subscribe()

Logger.database.info("ChangeNotifier: Now subscribed to channel to receive realtime updates.")
```

**After (SDK 2.43.0):**
```swift
// Subscribe to notifications on the channel
// Note: Using subscribeWithError to handle potential subscription errors
do {
    try await channel.subscribeWithError()
    Logger.database.info("ChangeNotifier: Now subscribed to channel to receive realtime updates.")
} catch {
    Logger.database.error("ChangeNotifier: Failed to subscribe to channel: \(error)")
    return
}
```

**Benefits:**
- ✅ Explicit error handling for subscription failures
- ✅ Better debugging with specific error messages
- ✅ Prevents silent failures when subscription doesn't work

---

## 2. Authentication Configuration Changes

### Issue: Session Handling Behavior

**Warning (Purple):**
```
Initial session emitted after attempting to refresh the local stored session.
This is incorrect behavior and will be fixed in the next major release since it's a breaking change.
To opt-in to the new behavior now, set `emitLocalSessionAsInitialSession: true` in your AuthClient configuration.
```

### Solution

**Before (SDK 2.24.1):**
```swift
let supabase = SupabaseClient(
    supabaseURL: supabaseURL,
    supabaseKey: "eyJ..."
)
```

**After (SDK 2.43.0):**
```swift
let supabase = SupabaseClient(
    supabaseURL: supabaseURL,
    supabaseKey: "eyJ...",
    options: SupabaseClientOptions(
        auth: .init(
            // Opt-in to the new behavior for session handling
            emitLocalSessionAsInitialSession: true
        )
    )
)
```

**What This Does:**

| Old Behavior | New Behavior (with flag) |
|--------------|-------------------------|
| 1. App launches | 1. App launches |
| 2. Find stored session | 2. Find stored session |
| 3. Attempt to refresh token | 3. **Immediately emit session** ✨ |
| 4. Emit session (if refresh succeeds) | 4. Attempt refresh in background |
| ❌ No session if refresh fails | ✅ Session available immediately |

**Benefits:**
- ✅ Faster app startup - authenticated UI shows immediately
- ✅ Works offline - app functions without network
- ✅ Future-proof - this becomes default in next major release
- ✅ Better user experience

---

## 3. Session Expiration Handling

### Issue: Need to Check for Expired Sessions

With `emitLocalSessionAsInitialSession: true`, the app now receives sessions immediately, even if they're expired. We need to explicitly check for expiration.

### Solution

#### A. In `ChangeNotifier` (before subscribing to Realtime)

```swift
func subscribe() {
    // ... existing code ...
    
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
    
    // ... continue with subscription ...
}
```

#### B. In `SharedAuthenticationStore` (when restoring sessions)

```swift
if state.session == nil {
    Logger.authentication.info("SharedAuthenticationStore: There is no existing authenticated session to restore; setting authentication status to 'signed out'.")
    self.authenticationStatus = .signedOut
} else {
    // We have a session, but check if it's expired
    if let session = state.session, session.isExpired {
        Logger.authentication.warning("SharedAuthenticationStore: Session exists but is expired; setting authentication status to 'signed out'.")
        self.authenticationStatus = .signedOut
        // Sign out to clean up the expired session
        Task {
            try? await supabase.auth.signOut(scope: .local)
        }
    } else {
        Logger.authentication.info("SharedAuthenticationStore: An authenticated session exists and is valid; setting authentication status to 'signed in'.")
        self.authenticationStatus = .signedIn
    }
}
```

**Benefits:**
- ✅ Prevents using expired sessions
- ✅ Automatic cleanup of expired sessions
- ✅ Better security
- ✅ Clear logging for debugging

---

## 4. Unused Variable Warning

### Issue
```
Immutable value 'change' was never used; consider replacing with '_' or removing it
```

### Solution

**Before:**
```swift
for await change in changeStream {
    Logger.database.info("ChangeNotifier: Database changed; incrementing change counter.")
    changeCount += 1
}
```

**After:**
```swift
for await _ in changeStream {
    Logger.database.info("ChangeNotifier: Database changed; incrementing change counter.")
    changeCount += 1
}
```

This is a minor Swift best practice - use `_` to indicate an intentionally unused value.

---

## Complete File Changes

### Files Modified:

1. **`ChangeNotifier.swift`**
   - Updated `subscribe()` to use `subscribeWithError()`
   - Added session validation before subscription
   - Fixed unused variable warning

2. **`Supabase.swift`**
   - Added `SupabaseClientOptions` with `emitLocalSessionAsInitialSession: true`

3. **`SharedAuthenticationStore.swift`**
   - Added session expiration checking in `monitorAuthenticationState()`
   - Automatic cleanup of expired sessions

---

## Testing Checklist

After migration, verify:

- [ ] App launches successfully
- [ ] User can sign in with Google OAuth
- [ ] Session is restored after app restart
- [ ] Realtime updates work (save a listing, see it update)
- [ ] Expired sessions are handled gracefully
- [ ] No compiler warnings
- [ ] App works offline with cached session

---

## Key Takeaways

1. **Always use `subscribeWithError()`** for better error handling
2. **Enable `emitLocalSessionAsInitialSession`** for faster startup and offline support
3. **Check `session.isExpired`** when using immediately-emitted sessions
4. **Log authentication state changes** for easier debugging

---

## Resources

- [Supabase Swift SDK Changelog](https://github.com/supabase-community/supabase-swift/releases)
- [Session Handling PR #822](https://github.com/supabase/supabase-swift/pull/822)
- [Realtime Documentation](https://supabase.com/docs/guides/realtime)

---

**Last Updated:** April 6, 2026  
**SDK Version:** Supabase Swift 2.43.0  
**Xcode Version:** 16+  
**iOS Target:** 17+

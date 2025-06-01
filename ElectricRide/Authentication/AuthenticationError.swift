//
//  AuthenticationError.swift
//  LCSCheckIn
//
//  Created by Russell Gordon on 2024-12-12.
//

import Foundation

enum AuthenticationError: Error {
    case nameMissing
    case emailMissing
    case authenticationObjectMissing
    case userIsNotAnOrganizer
}

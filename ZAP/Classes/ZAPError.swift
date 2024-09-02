//
//  ZAPError.swift
//  ZAP
//
//  Created by Stephen Muscarella on 8/28/24.
//

import Foundation

public enum ZAPError<F>: Error {
    case failureError(_ error: F)
    case internalError(_ error: InternalError)
}

public struct InternalError: Error {
    var debugMsg: String
}

enum ZAPErrorMsg: String, Error {
    case malformedURL = "The URL is malformed"
    case unknown = "An unknown error occurred"
    case failedToReadFileDataFromFile = "Failed to read file data from file path"
}

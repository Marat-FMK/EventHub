//
//  NetworkError.swift
//  EventHub
//
//  Created by Келлер Дмитрий on 20.11.2024.
//

// MARK: - NetworkError
// Enum to represent different network errors that can occur
enum NetworkError: Error {
    case serverError(statusCode: Int, description: String)
    case invalidURL                    // Error when URL is invalid
    case invalidResponse               // Error for non-HTTP response
    case requestFailed(statusCode: Int) // Error when HTTP status code is not in 200-299 range
    case dataConversionFailure         // Error when data decoding fails
}

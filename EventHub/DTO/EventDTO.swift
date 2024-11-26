//
//  EventDTO.swift
//  EventHub
//
//  Created by Келлер Дмитрий on 20.11.2024.
//

import Foundation

// MARK: - Response
struct APIResponseDTO: Codable, Sendable, DecodableType {
    let next: String?
    let previous: String?
    let results: [EventDTO]
}

// MARK: - Event
struct EventDTO: Codable, Identifiable, Sendable, DecodableType {
    let id: Int
    let title: String?
    let images: [ImageDTO]
    let description: String?
    let bodyText: String?
    let favoritesCount: Int?
    let dates: [EventDate]
    let place: PlaceDTO?
    let location: EventLocation?
    let participants: [Participant]?

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case images
        case description
        case bodyText = "body_text"
        case favoritesCount = "favorites_count"
        case dates
        case place
        case location
        case participants
    }
}


// MARK: - EventCategory
struct CategoryDTO: Codable, Identifiable, Sendable, DecodableType {
    let id: Int
    let slug: String
    let name: String
}

// MARK: - EventCategory
struct EventCategory: Codable, Identifiable, Sendable, DecodableType {
    let id: Int
    let slug: String
    let name: String
}

// MARK: - EventDate
struct EventDate: Codable, Sendable, DecodableType {
    let start: Int?
    let end: Int?
    let startDate: String?
    let startTime: String?
    let endTime: String?
    
    enum CodingKeys: String, CodingKey {
        case start, end
        case startDate = "start_date"
        case startTime = "start_time"
        case endTime = "end_time"
    }
}
// MARK: - Place
struct PlaceDTO: Codable, Sendable, DecodableType {
    let id: Int
    let title: String?
    let slug: String
    let address: String
    let coords: Coordinates
    let location: String

    enum CodingKeys: String, CodingKey {
        case id, title, slug, address
        case coords
        case location
    }
}


// MARK: - Coordinates
struct Coordinates: Codable, Sendable, DecodableType {
    let lat: Double
    let lon: Double
}

// MARK: - Location
struct EventLocation: Codable, Sendable, DecodableType {
    let slug: String
    let name: String?
}


// MARK: - Participant
struct Participant: Codable {
    let role: Role?
    let agent: Agent?
}

// MARK: - Role
struct Role: Codable, Sendable, DecodableType {
    let slug: String?
}

// MARK: - Agent
struct Agent: Codable, Sendable, DecodableType {
    let id: Int
    let title: String?
    let slug: String?
    let agentType: String?
    let images: [String]?
    let siteURL: String?
    let isStub: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id, title, slug
        case agentType = "agent_type"
        case images
        case siteURL = "site_url"
        case isStub = "is_stub"
    }
}

enum Language: String, Codable, DecodableType {
    case ru, en
}

// MARK: - EventCategory

struct ImageDTO: Codable, Sendable, DecodableType {
    let image: String?
}

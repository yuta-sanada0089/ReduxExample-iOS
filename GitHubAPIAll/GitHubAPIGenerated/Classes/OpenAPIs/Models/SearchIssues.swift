//
// SearchIssues.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct SearchIssues: Codable {

    public var items: [Any]?
    public var totalCount: Int?

    public init(items: [Any]?, totalCount: Int?) {
        self.items = items
        self.totalCount = totalCount
    }

    public enum CodingKeys: String, CodingKey { 
        case items
        case totalCount = "total_count"
    }


}


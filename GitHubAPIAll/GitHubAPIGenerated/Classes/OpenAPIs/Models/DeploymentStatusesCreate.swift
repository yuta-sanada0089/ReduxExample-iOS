//
// DeploymentStatusesCreate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct DeploymentStatusesCreate: Codable {

    public var _description: String?
    public var state: String?
    public var targetUrl: String?

    public init(_description: String?, state: String?, targetUrl: String?) {
        self._description = _description
        self.state = state
        self.targetUrl = targetUrl
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case state
        case targetUrl = "target_url"
    }


}


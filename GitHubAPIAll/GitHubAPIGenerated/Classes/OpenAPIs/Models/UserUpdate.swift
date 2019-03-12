//
// UserUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct UserUpdate: Codable {

    public var bio: String?
    public var blog: String?
    public var company: String?
    public var email: String?
    public var hireable: Bool?
    public var location: String?
    public var name: String?

    public init(bio: String?, blog: String?, company: String?, email: String?, hireable: Bool?, location: String?, name: String?) {
        self.bio = bio
        self.blog = blog
        self.company = company
        self.email = email
        self.hireable = hireable
        self.location = location
        self.name = name
    }


}


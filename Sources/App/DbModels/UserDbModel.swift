//
//  File.swift
//  
//
//  Created by Анатолий Миронченко on 25.08.2024.
//

import Foundation
import Fluent

final class UserDbModel: Model {
    static let schema: String = "users"
    
    @ID(key: .id)
    var id: UUID?
    @Field(key: "username")
    var username: String
    @Field(key: "email")
    var email: String?
    @Field(key: "group")
    var group: String?
    @Field(key: "is_superuser")
    var is_superuser: Bool?
    @Field(key: "password")
    var password: String
    
    init() {}
    
    init(id: UUID? = UUID(), username: String, email: String? = nil, group: String? = "users", is_superuser: Bool? = false, password: String) {
        self.id = id
        self.username = username
        self.email = email
        self.group = group
        self.is_superuser = is_superuser
        self.password = password
    }
}

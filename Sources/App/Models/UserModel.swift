//
//  File.swift
//  
//
//  Created by Анатолий Миронченко on 24.08.2024.
//

import Vapor

// MARK: UserModel
struct User: Content {
    var id: String = UUID().uuidString
    var username: String
    var email: String
    var group: String = "users"
    var password: String
    var is_superuser: Bool = false
}

// MARK: CreateUserModel
struct CreateUser: Content {
    var token: String
    var username: String
    var email: String
    var password: String
    var group: String
    var is_superuser: Bool
}

// MARK: RegisterUserModel
struct RegisterUser: Content {
    var username: String
    var email: String
    var password: String
}

// MARK: ChangeUserModel
struct ChangeUser: Content {
    var username: String?
    var group: String?
    var old_password: String?
    var new_password: String?
    var is_superuser: Bool?
    var token: String
}

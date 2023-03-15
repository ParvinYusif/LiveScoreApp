//
//  StructFile.swift
//  LiveScoreApp
//
//  Created by pervın on 11.03.23.
//

import Foundation

struct Login: Codable {
    let mail: String
    let password: String
}

struct Registr: Codable {
    let email: String
    let name: String
    let password: String
    let phonenumber: String
}

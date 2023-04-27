//
//  Model.swift
//  LiveScoreApp
//
//  Created by pervın on 31.03.23.
//

import Foundation

struct MainData: Codable {
    let data: MainDataCountry?
}
struct MainDataCountry: Codable {
    let countries: [Country]?
}
struct Country: Codable, ListItemProtocol {
    let countryName: String?
    let leauges: [Leauge]?
    
    var titleText: String {
        countryName ?? ""
    }
}
struct Leauge: Codable, ListItemProtocol {
    let leaugeName: String?
    let club: [Club]?
    
    var titleNext: String {
        leaugeName ?? ""
    }
}
struct Club: Codable, ListItemProtocol {
    let clubName: String?
    var titleText: String {
        clubName ?? ""
    }
}

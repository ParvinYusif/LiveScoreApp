//
//  JsonParser.swift
//  LiveScoreApp
//
//  Created by pervın on 31.03.23.
//

import Foundation

class JsonParser {
    static let shared = JsonParser()
    func parse(complete: @escaping()->(), failure: @escaping(String)-> ()) {
        let url = Bundle.main.url(forResource: "liga", withExtension: "json")
        if let data = try? Data(contentsOf: url!) {
            do {
                let model = try JSONDecoder().decode(MainData.self, from: Data())
            } catch {
                failure(error.localizedDescription)
            }
        }
    }
}

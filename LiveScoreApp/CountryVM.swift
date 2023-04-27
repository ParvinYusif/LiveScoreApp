//
//  CountryVM.swift
//  LiveScoreApp
//
//  Created by pervın on 02.04.23.
//

import Foundation

class CountryVM {
    var listItems = [Country]()
    
    func configureList() {
        JsonParser.shared.parse(type: MainData.self, resourceName: "liga") { response in
            if let list = response.data?.countries {
                self.listItems = list
            }
        } failure: { errorMessage in
            print("error: \(errorMessage)")
        }
    }
}

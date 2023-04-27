//
//  MainTabBarController.swift
//  LiveScoreApp
//
//  Created by pervın on 22.03.23.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        jsonFileRead()
    }
    
    func jsonFileRead() {
        if let jsonFile = Bundle.main.url(forResource: "RegistrFile", withExtension: "json"),
           let data = try? Data(contentsOf: jsonFile) {
            do {
                let data2 = try? Data(contentsOf: jsonFile)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}

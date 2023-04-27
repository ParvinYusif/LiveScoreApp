//
//  LiveController.swift
//  LiveScoreApp
//
//  Created by pervın on 23.03.23.
//

import UIKit

class LiveController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var table: UITableView!
    
    var game = ["                     29.03.2023 19:00",
                "Qarabagh - Neftchi",
               "Sabah - Zire",
                "                     29.03.2023 20:00",
               "Beshiktash - Fenerbahche",
               "Galatasaray - Trabzonspor"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        game.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let controller = tableView.dequeueReusableCell(withIdentifier: "Cell") as! UITableViewCell
        controller.textLabel?.text = game[indexPath.row]
        return controller
    }
  
}

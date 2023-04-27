//
//  ClubsController.swift
//  LiveScoreApp
//
//  Created by pervın on 31.03.23.
//

import UIKit

class ClubsController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    var listItems = [Club]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! UITableViewCell
        cell.configure(data: listItems[indexPath.row])
        return cell
    }
    
}

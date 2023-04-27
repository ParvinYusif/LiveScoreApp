//
//  LigaVIewController.swift
//  LiveScoreApp
//
//  Created by pervın on 25.03.23.
//

import UIKit

class LigaVIewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var listItem = [Leauge]()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listItem.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! UITableViewCell
        cell.configure(data: listItem[indexPath.row])
//        cell.textLabel?.text = listItem[indexPath.row].club
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ClubsController") as! ClubsController
        controller.listItem = listItem[indexPath.row].club
        navigationController?.show(controller, sender: nil)
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

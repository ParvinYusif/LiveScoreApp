//
//  CountryController.swift
//  LiveScoreApp
//
//  Created by pervın on 23.03.23.
//

import UIKit

class CountryController: UIViewController {
     
        @IBOutlet weak var table: UITableView!
        var viewModel = CountryVM()
//        var country = ["Azerbaycan", "Turkiye"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
            viewModel.configureList()
            self.table.reloadData()
        }
        func jsonFileRead() {
            if let jsonFile = Bundle.main.url(forResource: "liga", withExtension: "json"),
               let data = try? Data(contentsOf: jsonFile) {
                do {
                    let data2 = try? Data(contentsOf: jsonFile)
                } catch {
                    print(error.localizedDescription)
                    
                    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                        viewModel.listItems.count
                    }
                    
                    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
                        cell.configure(data:viewModel.listItems[indexPath.row])
                        return cell
                    }
                    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                        print("index: \(indexPath.row) selected")
                        let liga = storyboard?.instantiateViewController(withIdentifier: "LigaVIewController") as! LigaVIewController
                        liga.listItem = viewModel.listItems[indexPath.row].leauges
                        navigationController?.show(liga, sender: nil)
                    }
                }
                
            }
        }
    }
    
    


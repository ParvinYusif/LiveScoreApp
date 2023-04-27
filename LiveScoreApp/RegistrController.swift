//
//  RegistrController.swift
//  LiveScoreApp
//
//  Created by pervın on 07.03.23.
//

import UIKit
 
class RegistrController: UIViewController {
    
    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        getFilePath()
    }
    func getFilePath() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let doDirectory = paths[0]
        let path = doDirectory.appendingPathComponent("Users.json")
        return path
    }
//    func writeJsonFil() {
//        do {
//            let data = try JSONEncoder().encoder(Registr)
//            try data.write(to: getFilePath())
//        } catch {
//            print(error.localizedDescription)
//        }
//    }
    @IBAction func buttonTapped(_ sender: Any) {
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let sceneDelegate = scene.delegate as? SceneDelegate {
            sceneDelegate.setSecondRootController(windowscene: scene)
        }
        if let fullname = fullnameTextField.text, !fullname.isEmpty,
           let email = emailText.text, !email.isEmpty,
           let password = passwordText.text, !password.isEmpty,
           let number = numberTextField.text, !number.isEmpty {
            let controller = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! MainTabBarController
            navigationController?.show(controller, sender: nil)
        }
    }
}

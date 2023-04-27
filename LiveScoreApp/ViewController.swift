//
//  ViewController.swift
//  LiveScoreApp
//
//  Created by pervın on 04.03.23.


//
//LIVE SCORE APP
//
//
//
//Istifadeci login ve register olacaq. App’e giris eledikden sonra bir daha login
//etmeyecek. Esas sehifede canli oyunlarin siyahisi olacaq. Istifadeci istediyi oyunu favorite
//ede bilecek. Olkelere click edende liqalar gorsenecek. Liqalara da click edende klublar
//gorsenecek. Olkeler, liqalar ve klublar siyahisinda axtaris edile bilecek. Istifadecinin profile
//sehifesi olacaq, hemin sehifede deyisiklik ede bilecek. Logout edile bilmelidir.



import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let sceneDelegate = scene.delegate as? SceneDelegate {
            UserDefaults.standard.set(true, forKey: "loggedIn")
            sceneDelegate.setSecondRootController(windowscene: scene)
        }
        if let email = emailTextField.text, !email.isEmpty,
           let password = passwordTextField.text, !password.isEmpty {
            let controller = storyboard?.instantiateViewController(withIdentifier: "MainTabBarController") as! MainTabBarController
            navigationController?.show(controller, sender: nil)
        }
    }
    
    @IBAction func registrButton(_ sender: Any) {
        let registr = storyboard?.instantiateViewController(withIdentifier: "RegistrController") as! RegistrController
        navigationController?.show(registr, sender: nil)
    }
}
    


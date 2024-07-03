//
//  ViewController.swift
//  AppHW
//
//  Created by Ильнур Салахов on 01.07.2024.
//

import UIKit

var users = ["admin admin":["adminImg","admin","10.10.10","+555555","Я создатель"]]
class ViewController: UIViewController {
    
    let adminLogin: String = "admin"
    let adminPassword: String = "admin"
    
    let userLogin1: String = "user"
    let userPassword1: String = "user"
    
    @IBOutlet weak var userLogin: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "123"{
            if let destVC = segue.destination as? SecondViewViewController{
                destVC.password = userLogin.text!
                destVC.login = userPassword.text!
            }
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        let vc = SecondViewViewController()
        vc.config(password: userPassword.text!, login: userLogin.text!)

        if userLogin.text == adminLogin && userPassword.text==adminPassword || userLogin.text == userLogin1 && userPassword.text == userPassword1{
            performSegue(withIdentifier: "123", sender: nil)
        }
        else {
            let alert = UIAlertController(title: "error", message: "wrong login or parrword", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
}




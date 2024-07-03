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
    
    @IBOutlet weak var userLogin: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonClicked(_ sender: Any) {
        let vc = SecondView()
//
//        if userLogin.text == adminLogin && userPassword.text == adminPassword{
            navigationController?.pushViewController(vc, animated: true)
//        }
    }
}




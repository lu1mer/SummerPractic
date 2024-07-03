//
//  SecondViewViewController.swift
//  AppHW
//
//  Created by Ильнур Салахов on 03.07.2024.
//


import UIKit
class SecondViewViewController: UIViewController{
    @IBOutlet weak var dopInf: UILabel!
    @IBOutlet weak var fioLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userUImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
   
    var password: String=""
    var login: String=""
    
    var users = ["admin admin":["adminImg","admin","10.10.10","fasfad@mail.ru","Я создатель"],"user user" : ["userImg","Иванов Иван Иванович","05.05.2005","fds@fsd.fd","Люблю петь и играть в шахматы"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(login,password)
        var nowUser = users[login+" "+password]
        
        userUImage?.image = UIImage(named: (nowUser?[0])!)
        fioLabel?.text = nowUser?[1]
        dateLabel?.text = nowUser?[2]
        emailLabel?.text = nowUser?[3]
        dopInf?.text = nowUser?[4]
        
        
    }
    func config(password:String,login:String){
        self.login = login
        self.password = password
        print(login)
    }
    
    
}


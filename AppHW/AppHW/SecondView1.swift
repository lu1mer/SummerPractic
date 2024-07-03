//
//  SecondView.swift
//  AppHW
//
//  Created by Ильнур Салахов on 02.07.2024.
//
var users1 = ["admin admin":["adminImg","admin","10.10.10","fasfad@mail.ru","Я создатель"],"user user" : ["userImg","Иванов Иван Иванович","05.05.2005","fds@fsd.fd","Люблю петь и играть в шахматы"]]
import UIKit
class SecondView: UIViewController{
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var dopInfLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var fioLabel: UILabel!

    

    var password: String=""
    var login: String=""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel?.text = "132"
    }
    func config(password:String,login:String){
        self.login = login
        self.password = password
    }
    
    
}

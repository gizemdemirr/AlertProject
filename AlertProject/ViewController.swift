//
//  ViewController.swift
//  AlertProject
//
//  Created by Gizem on 11.06.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var userNameText: UITextField!
    
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpButton(_ sender: Any) {
//        uyarı mesajı verme
     /*   let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
//        alerte buton ekleme çıkış yapmak için
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("okey")
        }
        alert.addAction(okButton)
       
        self.present(alert, animated: true, completion: nil)
      */
//        kullanıcı adı boşsa hata verme
        if userNameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "username not found")
        }else if passwordText.text == ""{
           makeAlert(titleInput: "Error!", messageInput: "password not found")
        }else if passwordText.text != passwordAgainText.text{
            makeAlert(titleInput: "Error!", messageInput: "password do not match")
        }else {
            makeAlert(titleInput: "Success", messageInput: "User Ok")
        }
                    
    }
//    çoklu kod yazmak yerine fonksiyonda tanımlayıp ilgili yerleri parantez içinden alıyoruz.
    func makeAlert(titleInput : String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}


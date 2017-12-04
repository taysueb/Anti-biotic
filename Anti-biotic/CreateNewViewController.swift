//
//  CreateNewViewController.swift
//  Anti-biotic
//
//  Created by sirikorn on 12/2/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class CreateNewViewController: UIViewController {

    @IBOutlet weak var createView: UIView!
    @IBAction func exitBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var createNewBtn: UIButton!
    @IBOutlet weak var passView: UIView!
    @IBOutlet weak var usernameView: UIView!
    @IBOutlet weak var confirmView: UIView!
    @IBOutlet weak var logoView: UIView!
    
    @IBOutlet weak var confirmText: UITextField!
    @IBOutlet weak var checkImgView: UIImageView!
    
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        logoView.layer.cornerRadius = 37
        usernameView.layer.cornerRadius = 20
        passView.layer.cornerRadius = 20
        confirmView.layer.cornerRadius = 20
        createNewBtn.layer.cornerRadius = 20
        createView.layer.cornerRadius = 10
        createView.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    
    func post(){
        
        let confirm = confirmText.text
        let username = userText.text
        let password = passText.text
        let status = "Doctor"
        let person : [String : Any] = ["username" : username as Any,
                                       "password" : password as Any,
                                       "status"   : status as Any
                                       ]
        
        var ref: DatabaseReference!
        ref = Database.database().reference()
        ref.child("Person").childByAutoId().setValue(person)
    }
    
    @IBAction func createAcc(_ sender: Any) {
        post()
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}

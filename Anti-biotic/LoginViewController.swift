//
//  LoginViewController.swift
//  Anti-biotic
//
//  Created by sirikorn on 12/2/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var passView: UIView!
    @IBOutlet weak var logoView: UIView!
    @IBOutlet weak var usernameView: UIView!
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBOutlet weak var createBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        logoView.layer.cornerRadius = 65
        usernameView.layer.cornerRadius = 24
        passView.layer.cornerRadius = 24
        loginBtn.layer.cornerRadius = 22
        createBtn.layer.cornerRadius = 22
        createBtn.layer.borderWidth = 1
        let myColor : UIColor = UIColor( red: 0.617, green: 0.752, blue:0.824, alpha: 1.0 )
        createBtn.layer.borderColor = myColor.cgColor

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

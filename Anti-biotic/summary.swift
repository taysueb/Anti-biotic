//
//  summary.swift
//  Anti-biotic
//
//  Created by Chaicharn Vijarnsatit on 11/1/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class summary: UIViewController {

    @IBOutlet weak var historyBtn: UIButton!
    @IBAction func historyMethod(_ sender: Any) {
        actioncall()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
          // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func actioncall () {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "historyViewController") as! historyViewController
        self.present(nextViewController, animated:true, completion:nil)
        
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



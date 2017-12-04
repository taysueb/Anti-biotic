//
//  historyViewController.swift
//  Anti-biotic
//
//  Created by Chaicharn Vijarnsatit on 11/1/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class historyViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var quote = ["4","3","2"]
    
    var datedate =  ["Janury 6, 1996 at 06:06 AM","Janury 11, 1996 at 11:11 AM","December 13, 1989 at 13:13 PM"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.quote.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "historyTableViewCell") as?  historyTableViewCell else {return UITableViewCell()}
        let this = quote[indexPath.row]
        
        cell.des.text = this
        cell.date.text = "Date: "+datedate[indexPath.row]
     
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            self.quote.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
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

}

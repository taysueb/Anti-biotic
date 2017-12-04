//
//  Question.swift
//  Anti-biotic
//
//  Created by Chaicharn Vijarnsatit on 10/31/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class Question: UIViewController {
    
    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionTextview: UITextView!
    let question = ["มีการถ่ายเหลวมากกว่า 3 ครั้งหรือถ่ายมีมูกเลือดปน 1 ครั้ง","ไข้(อุณหภูมิที่วัดทางปากมากกว่า 38°C หรือมากกว่า 37.5°C ทางรักแร้)","อาเจียนมากกินอาหารได้น้อย","อาการปวดท้องมีอาการปวดเด่นที่ท้องน้อยด้านขวาและไม่เคยผ่าตัดไส้ติ่ง"]
    let number = ["1","2","3","4"]
    override func viewDidLoad() {
        super.viewDidLoad()
         questionTextview.text = question[0]
         summaryBtn.isHidden = true
         qLabel.layer.cornerRadius = qLabel.frame.width/2
         qLabel.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var summaryBtn: UIButton!
    @IBOutlet weak var yesBtn: UIButton!
    @IBOutlet weak var noBtn: UIButton!
    
    @IBAction func noMethod(_ sender: Any) {
        if (questionTextview.text == question[0])
        {
            questionTextview.text = question[1]
            qLabel.text = number[1]
        }else if(questionTextview.text == question[1]){
            questionTextview.text = question[2]
            qLabel.text = number[2]
        }else if(questionTextview.text == question[2]){
            questionTextview.text = question[3]
            qLabel.text = number[3]
        }else if(questionTextview.text == question[3]){
            questionTextview.text = question[3]
            yesBtn.isHidden = true
            noBtn.isHidden = true
            summaryBtn.isHidden = false
        }

    }
    @IBAction func yesMethod(_ sender: Any) {
        
         if (questionTextview.text == question[0])
         {
            questionTextview.text = question[1]
            qLabel.text = number[1]
         }else if(questionTextview.text == question[1]){
            questionTextview.text = question[2]
            qLabel.text = number[2]
         }else if(questionTextview.text == question[2]){
            questionTextview.text = question[3]
            qLabel.text = number[3]
         }else if(questionTextview.text == question[3]){
            questionTextview.text = question[3]
            yesBtn.isHidden = true
            noBtn.isHidden = true
            summaryBtn.isHidden = false
       }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }
    
    func numberOfObjectsInMyArray() -> Int {
        return question.count
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

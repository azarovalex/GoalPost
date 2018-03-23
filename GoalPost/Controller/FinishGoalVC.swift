//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Alex Azarov on 3/22/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var pointsTxtField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTxtField.delegate = self
    }

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        // Pass data in Core Data goal model
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}

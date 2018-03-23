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
        if pointsTxtField.text != "0" && pointsTxtField.text != nil {
            save { (success) in
                if success {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_: Bool) -> Void) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalTotalValue = Int32(pointsTxtField.text!)!
        goal.goalProgress = Int32(0)
        do {
            try managedContext.save()
            print("Data saved!")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
        
    }
    
}

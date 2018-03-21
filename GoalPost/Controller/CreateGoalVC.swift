//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Alex Azarov on 3/21/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    // Outlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var lognTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
}

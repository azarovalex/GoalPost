//
//  GoalCell.swift
//  GoalPost
//
//  Created by Alex Azarov on 3/18/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var goalDescription: UILabel!
    @IBOutlet weak var goalType: UILabel!
    @IBOutlet weak var goalProgress: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    func configureCell(goal: Goal) {
        self.goalType.text = goal.goalType
        self.goalDescription.text = goal.goalDescription
        self.goalProgress.text = String(goal.goalProgress)
        
        if goal.goalProgress == goal.goalTotalValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }

}

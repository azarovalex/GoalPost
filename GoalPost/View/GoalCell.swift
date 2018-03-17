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
    
    func configureCell(description: String, type: String, goalProgressAmount: Int) {
        self.goalType.text = type
        self.goalDescription.text = description
        self.goalProgress.text = String(goalProgressAmount)
    }

}

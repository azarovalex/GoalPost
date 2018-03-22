//
//  UIButtonExt.swift
//  GoalPost
//
//  Created by Alex Azarov on 3/22/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.3997107744, green: 0.8501264453, blue: 0.7868118882, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.7645967603, green: 0.9638454318, blue: 0.9343547225, alpha: 1)
    }
}

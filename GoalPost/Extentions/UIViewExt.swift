//
//  UIViewExt.swift
//  GoalPost
//
//  Created by Alex Azarov on 3/22/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

extension UIView {
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    @objc func keyboardWillChange(_ notification: NSNotification) {
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIKeyboardAnimationCurveUserInfoKey] as! UInt
        
        let staringFrame = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingFrame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = endingFrame.origin.y - staringFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0, options: UIViewKeyframeAnimationOptions.init(rawValue: curve), animations: {
            self.frame.origin.y += deltaY
        }, completion: nil)
    }
}

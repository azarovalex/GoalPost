//
//  UIViewControllerExt.swift
//  GoalPost
//
//  Created by Alex Azarov on 3/21/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window!.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false)
    }
    
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        
        guard let presentedVC = presentedViewController else { return }
        presentedVC.dismiss(animated: false, completion: {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        })
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window!.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false)
    }
}

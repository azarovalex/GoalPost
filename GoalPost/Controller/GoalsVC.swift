//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Alex Azarov on 3/14/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//


import UIKit

class GoalsVC: UIViewController {
    
    
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addGoalPressed(_ sender: Any) {
        print("Button was pressed.")
    }
    
}


//
//  ViewController.swift
//  ThirdApp
//
//  Created by Mike Zhang on 9/3/20.
//  Copyright © 2020 Michael Cheung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // initialize left and right scores
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        
        // generate left and right random numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // update current image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // update score labels for players
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightNumber > leftNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // tie
        }
    }
    
}


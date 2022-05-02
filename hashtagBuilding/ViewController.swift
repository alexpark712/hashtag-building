//
//  ViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var opportunitiesLabel: UILabel!
    @IBOutlet weak var communityLabel: UILabel!
    @IBOutlet weak var futureLabel: UILabel!
    
    // Opportunities Animation
    var opportunities = "#building opportunities"
    
    // Community Animation
    var community = "#building community"
    
    // Future Animation
    var future = "#building the future"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
            self.animation()
             self.performSegue(withIdentifier: "leadingToMain", sender: self)
        })
    }
    
    @objc
    func animation() {
        var loopOnce = true
        while loopOnce {
            for i in opportunities {
                opportunitiesLabel.text! += "\(i)"
                RunLoop.current.run(until: Date() + 0.08)
            }
            for i in community {
                communityLabel.text! += "\(i)"
                RunLoop.current.run(until: Date() + 0.08)
            }
            for i in future {
                futureLabel.text! += "\(i)"
                RunLoop.current.run(until: Date() + 0.08)
            }
            loopOnce = false
        }
    }
}



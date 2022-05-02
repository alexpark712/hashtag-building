//
//  MissionViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var slackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapTwitter(sender: UIButton) {
        guard let settingsUrl = URL(string:"https://twitter.com/htbuilding") else {
                return
            }
            UIApplication.shared.open(settingsUrl, options: [:], completionHandler: nil)
    }
    
    @IBAction func didTapSlack(sender: UIButton) {
        guard let settingsUrl = URL(string:"https://htbuilding.slack.com/") else {
                return
            }
            UIApplication.shared.open(settingsUrl, options: [:], completionHandler: nil)
    }

}

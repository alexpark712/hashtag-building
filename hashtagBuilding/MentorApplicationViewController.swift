//
//  MentorApplicationViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park
//

import UIKit

class MentorApplicationViewController: UIViewController {
    @IBOutlet weak var formButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapForm(sender: AnyObject) {
        guard let settingsUrl = URL(string:"https://form.jotform.com/parkut/ht-building-mentor-application") else {
                return
            }
            UIApplication.shared.open(settingsUrl, options: [:], completionHandler: nil)
    }
    

}

//
//  MeetFoundersViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park
//

import UIKit

class FounderFeatureViewController: UIViewController {
    @IBOutlet weak var founderImage: UIImageView!
    @IBOutlet weak var founderDescription: UILabel!
    
    var descriptionArray: [String] = ["Nathan French - Boston College - Class of 2024. Founder of EagleAnalytics - a dining management analytics platform that displays line wait times", "Julia Burdsall - Boston College - Class of 2025. Co-Founder of Fello - a personal relationship manager that keeps track of mentors, meetings, and reminders as you network", "Jackson Winslow - Boston College - Class of 2024. Co-Founder of Sneakers Made Simple - an online platform that provides detailed guides to get sneakers on their release day", "Jorge Dickens - Boston College - Class of 2024. Co-Founder of Split - a mobile app that usees buy-now-pay-later technology to improve group payments", "Isabelle Bauer - Boston College - Class of 2022. Co-Founder of Vybe, a platform that supports shopping on social media and organizing shoppable lists"]
    
    var currentImageNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        founderDescription.text = descriptionArray[currentImageNumber]
        founderImage.image = UIImage(named: "founder\(currentImageNumber)")
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        currentImageNumber += sender.tag
        
        if currentImageNumber < 0 {
            currentImageNumber = 4
        } else if currentImageNumber > 4 {
            currentImageNumber = 0
        }
      
        currentImageNumber += 1
        if currentImageNumber > 4 {
            currentImageNumber = 0
        }
        founderDescription.text = descriptionArray[currentImageNumber]
        founderImage.image = UIImage(named: "founder\(currentImageNumber)")
        
    }

}


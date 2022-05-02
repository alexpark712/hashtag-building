//
//  StudentFeatureViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park
//

import UIKit

class StudentFeatureViewController: UIViewController {
    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var studentDescription: UILabel!
    
    var descriptionArray: [String] = ["Maggie Yan - Boston College - Class of 2022. Skills and Interests: Canva, Social Media, and Film", "Kevin Koh - Boston College - Class of 2024. Skills and Interests: Data Visualization, API Parsing, and Python", "Jack McCarthy - Boston College - Class of 2024. Skills and Interests: Blockchain, DAOs, and Cryptocurrency", "Aly Steichen - Boston College - Class of 2024. Skills and Interests: Physical Computing, Ed-Tech, Consulting", "Colin Lee - Boston College - Class of 2023. Skills and Interests: Product Management, Web3, and Outreach"]
    

    var currentImageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentDescription.text = descriptionArray[currentImageNumber]
        studentImage.image = UIImage(named: "student\(currentImageNumber)")
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
        studentDescription.text = descriptionArray[currentImageNumber]
        studentImage.image = UIImage(named: "student\(currentImageNumber)")
    }

}

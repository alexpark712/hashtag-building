//
//  MentorFeatureViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park
//

import UIKit

class MentorFeatureViewController: UIViewController {
    @IBOutlet weak var mentorImage: UIImageView!
    @IBOutlet weak var mentorDescription: UILabel!
    
    var descriptionArray: [String] = ["Meagan Loyst - VC Associate at Lerer Hippeau, Founder of GenZ VCs, Advisory Board at Girls Who Invest", "John Gallaugher - Information Systems Professor at Boston College, Textbook Author, Student Entrepreneur Advisor", "Travis Rosbach - Founder of Hydroflask, CEO of Tumalo Group, Public Speaker", "Carra Wu - Cryptography Investments Team at Andreessen Horowitz, Previously Software Engineer at Microsoft and Apple", "Adejire Bademosi - Inclusion, Diversity, and Purpose at Discord, Previously Head of Global Socila Impact at Airbnb and Roku"]
    
    var currentImageNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        mentorDescription.text = descriptionArray[currentImageNumber]
        mentorImage.image = UIImage(named: "mentor\(currentImageNumber)")
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
        mentorDescription.text = descriptionArray[currentImageNumber]
        mentorImage.image = UIImage(named: "mentor\(currentImageNumber)")
        
    }

}

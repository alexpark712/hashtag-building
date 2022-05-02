//
//  MainPageViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park
//

import UIKit

class MainPageViewController: UIViewController {
    @IBOutlet weak var forStudents: UIButton!
    @IBOutlet weak var forFounders: UIButton!
    @IBOutlet weak var forMentors: UIButton!
    
    @IBOutlet weak var aboutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func studentsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "studentsSegue", sender: self)
    }
    
    @IBAction func foundersButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "foundersSegue", sender: self)
    }
    
    @IBAction func mentorsButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "mentorsSegue", sender: self)
    }
    
    @IBAction func aboutButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "aboutSegue", sender: self)
    }
}

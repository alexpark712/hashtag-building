//
//  TableViewController.swift
//  hashtagBuilding
//
//  Created by Alex Park

import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var projectJobArray = [
        "Freelance Website Designer \nSneakers Made Simple \nEmail: jackwinslow@bc.edu",
        "Social Media Marketing Manager \nSplit \nEmail: jorgedickens@bc.edu",
        "Community Platform Lead \nVybe \nEmail: isabellebauer@bc.edu",
        "Product Tester \nFello \nEmail: juliaburdsall@bc.edu",
        "Campus Ambassador Program Director \nGiftPocket \nEmail: brookeyoakam@bc.edu",
        "Data Analysis Coordinator \nEagleAnalytics \nEmail: nathanfrench@bc.edu",
        "Instagram Ambassador \nMCEE \nEmail: rhettsomers@bc.edu",
        "Risk Manager \nSencha Credit \nEmail: kristianlamarre@bc.edu",
        "Head of Growth \nSpotDrop \nEmail: arthurbrenninkmeijer@bc.edu",
        "Accountant \nCrossCheck \nEmail: kevinkoh@bc.edu",
        "Bookkeeper \nDeFi-Able \nEmail: haileywilcox@bc.edu"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        if #available(iOS 15, *) {
                    let appearance = UINavigationBarAppearance()
                    appearance.configureWithOpaqueBackground()
                    self.navigationController?.navigationBar.isTranslucent = true  // pass "true" for fixing iOS 15.0 black bg issue
                    self.navigationController?.navigationBar.tintColor = UIColor.systemBlue // We need to set tintcolor for iOS 15.0
                appearance.backgroundColor = .black    //removing navigationbar 1 px bottom border.
                    UINavigationBar.appearance().standardAppearance = appearance
                    UINavigationBar.appearance().scrollEdgeAppearance = appearance
                }

    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projectJobArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont (name: "Futura", size: 20)
        cell.textLabel?.numberOfLines = 3;
        cell.textLabel?.lineBreakMode = .byWordWrapping
        cell.textLabel?.text = projectJobArray[indexPath.row]
        return cell
    }
}



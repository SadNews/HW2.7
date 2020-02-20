//
//  DetailPersonViewController.swift
//  HW2.7
//
//  Created by Admin on 20.02.2020.
//  Copyright © 2020 UshakovAndrey. All rights reserved.
//

import UIKit

class DetailPersonViewController: UIViewController {
    
    @IBOutlet weak var personEmailLabel: UILabel!
    @IBOutlet weak var personPhoneLabel: UILabel!
    
    var detailInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personEmailLabel.text = "Телефон: " + detailInfo.email
        personPhoneLabel.text =  "Email: " + detailInfo.phoneNumber
    }
}

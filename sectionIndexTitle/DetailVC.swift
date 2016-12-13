//
//  ViewController.swift
//  sectionIndexTitle
//
//  Created by Pham Ngoc Hai on 12/13/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    var person  = Person()
    
    var labelName = UILabel()
    var phoneNumber = UILabel()
    var phone = UIImageView()
    var lblPhoneName = UILabel()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.labelName.frame = CGRect(x: 80 , y: 100, width: 300, height: 50)
        self.labelName.font = UIFont.boldSystemFont(ofSize: 25)
        self.labelName.text = person.lastName + " " + person.firstName
        
        self.phoneNumber.frame = CGRect(x: 30, y: 210, width: 300, height: 50)
        self.phoneNumber.font = UIFont.boldSystemFont(ofSize: 15)
        self.phoneNumber.text = person.mobilePhone
        self.phoneNumber.textColor = UIColor.black
    
        self.lblPhoneName.frame = CGRect(x: 30, y: 190, width: 300, height: 50)
        self.lblPhoneName.font = UIFont.boldSystemFont(ofSize: 15)
        self.lblPhoneName.text = person.fullName
        self.lblPhoneName.textColor = UIColor.blue
        
        self.phone.image = UIImage(named: "phone")
        self.phone.frame = CGRect(x: self.view.bounds.size.width - 100, y: 200, width: 79, height: 38)
        
        
        
        
        
        
        
        
        
        self.view.addSubview(self.labelName)
        self.view.addSubview(self.phoneNumber)
        self.view.addSubview(self.phone)
        self.view.addSubview(self.lblPhoneName)
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
}

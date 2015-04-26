//
//  ViewController.swift
//  Eduardo Santi
//
//  Created by Eduardo Santi on 20/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit

class ESAboutMeViewController: UIViewController {

    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var labelMyName: UILabel!
    @IBOutlet weak var labelAboutMe: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textViewMyInterests: UITextView!
    var aboutMe: ESAboutMe = ESAboutMe()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundColor()
        self.setConfigurationsImage()
        self.setConfigurationsLabelMyName()
        self.setConfigurationsTitle()
        self.setConfigurationsLabelAboutMe()
        self.setConfigurationsMyInterests()
    }
    
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 23/255, green: 177/255, blue: 213/255, alpha: 1.0)
    }
    
    func setConfigurationsImage(){
        myPhoto.layer.borderWidth = 1.0
        myPhoto.layer.masksToBounds = false
        myPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        myPhoto.layer.cornerRadius = myPhoto.frame.size.height/2
        myPhoto.clipsToBounds = true
    }
    
    func setConfigurationsLabelMyName(){
        self.labelMyName.text = self.aboutMe.name
        self.labelMyName.textColor = UIColor.whiteColor()
    }
    
    func setConfigurationsTitle(){
        self.labelTitle.text = self.aboutMe.title
        self.labelTitle.textColor = UIColor.whiteColor()
    }
    
    func setConfigurationsLabelAboutMe(){
        self.labelAboutMe.text = self.aboutMe.information
        self.labelAboutMe.textColor = UIColor.whiteColor()
    }
    
    func setConfigurationsMyInterests(){
        self.textViewMyInterests.editable = false
        self.textViewMyInterests.backgroundColor = UIColor.clearColor()
        self.textViewMyInterests.textColor = UIColor.whiteColor()
        self.textViewMyInterests.selectable = false
        self.textViewMyInterests.text = self.aboutMe.interests
        self.textViewMyInterests.scrollEnabled = false
    }
}
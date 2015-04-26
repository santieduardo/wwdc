//
//  ViewController.swift
//  Eduardo Santi
//  Contact: eduardoivaniskisanti@yahoo.com.br
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
        
        //method call for general settings
        self.setBackgroundColor()
        self.setConfigurationsImage()
        self.setConfigurationsLabelMyName()
        self.setConfigurationsTitle()
        self.setConfigurationsLabelAboutMe()
        self.setConfigurationsMyInterests()
    }
    
    //set background color
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 23/255, green: 177/255, blue: 213/255, alpha: 1.0)
    }
    
    //set images configurations
    func setConfigurationsImage(){
        myPhoto.layer.borderWidth = 1.0
        myPhoto.layer.masksToBounds = false
        myPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        myPhoto.layer.cornerRadius = myPhoto.frame.size.height/2
        myPhoto.clipsToBounds = true
    }
    
    //set label my name configurations
    func setConfigurationsLabelMyName(){
        self.labelMyName.text = self.aboutMe.name
        self.labelMyName.textColor = UIColor.whiteColor()
    }
    
    //set label title configurations
    func setConfigurationsTitle(){
        self.labelTitle.text = self.aboutMe.title
        self.labelTitle.textColor = UIColor.whiteColor()
    }
    
    //set label about me configurations
    func setConfigurationsLabelAboutMe(){
        self.labelAboutMe.text = self.aboutMe.information
        self.labelAboutMe.textColor = UIColor.whiteColor()
    }
    
    //set my interests configuration
    func setConfigurationsMyInterests(){
        self.textViewMyInterests.editable = false
        self.textViewMyInterests.backgroundColor = UIColor.clearColor()
        self.textViewMyInterests.textColor = UIColor.whiteColor()
        self.textViewMyInterests.selectable = false
        self.textViewMyInterests.text = self.aboutMe.interests
        self.textViewMyInterests.scrollEnabled = false
    }
}
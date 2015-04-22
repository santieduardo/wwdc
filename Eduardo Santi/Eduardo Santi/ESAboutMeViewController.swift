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
    @IBOutlet weak var textViewMyInterests: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "LaunchImage.jpg")!)
        self.view.backgroundColor = UIColor(red: 33/255, green: 157/255, blue: 182/255, alpha: 1.0)
        setValueImage()
        setValueLabelMyName()
        setValueLabelAboutMe()
        setValueMyInterests()
        setValueTabBarItem()
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    func setValueImage(){
        myPhoto.layer.borderWidth = 1.0
        myPhoto.layer.masksToBounds = false
        myPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        myPhoto.layer.cornerRadius = myPhoto.frame.size.height/2
        myPhoto.clipsToBounds = true
    }
    
    func setValueLabelMyName(){
        self.labelMyName.text = "Eduardo Santi"
        self.labelMyName.textColor = UIColor.whiteColor()
    }
    
    func setValueLabelAboutMe(){
        self.labelAboutMe.text = "BEPiD and Analysis and Systems Development Student"
        self.labelAboutMe.textColor = UIColor.whiteColor()
    }
    
    func setValueMyInterests(){
        self.textViewMyInterests.editable = false
        self.textViewMyInterests.backgroundColor = UIColor.clearColor()
        self.textViewMyInterests.textColor = UIColor.whiteColor()
        self.textViewMyInterests.selectable = false
        self.textViewMyInterests.text = "Meus interesses são desenvolvimento mobile na plataforma iOS e Mac OS X, integração dentre devices, desenvolvimento ágil, gerência de projetos e sistemas distribuídos"
    }
    
    func setValueTabBarItem(){
        self.tabBarItem.title = "About Me"
    }
    
}
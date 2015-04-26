//
//  ESContactViewController.swift
//  Eduardo Santi
//  Contact: eduardoivaniskisanti@yahoo.com.br
//  Created by Eduardo Santi on 24/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit
import MessageUI

class ESContactViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var buttonGithub: UIButton!
    @IBOutlet weak var buttonPhone: UIButton!
    @IBOutlet weak var buttonEmail: UIButton!
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var labelMyName: UILabel!
    @IBOutlet weak var labelMyInformation: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    var contact: ESContact = ESContact()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setBackgroundColor()
        self.setConfigurationsImage()
        self.setConfigurationsLabelMyName()
        self.setConfigurationsTitle()
        self.setConfigurationsLabelAboutMe()
        self.setConfigurationsButtons()
    }
    
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 252/255, green: 59/255, blue: 82/255, alpha: 1.0)
    }
    
    func setConfigurationsLabelMyName(){
        self.labelMyName.text = self.contact.name
        self.labelMyName.textColor = UIColor.whiteColor()
    }
    
    func setConfigurationsTitle(){
        self.labelTitle.text = self.contact.title
        self.labelTitle.textColor = UIColor.whiteColor()
    }
    
    func setConfigurationsLabelAboutMe(){
        self.labelMyInformation.text = self.contact.information
        self.labelMyInformation.textColor = UIColor.whiteColor()
    }
    
    func setConfigurationsImage(){
        myPhoto.layer.borderWidth = 1.0
        myPhoto.layer.masksToBounds = false
        myPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        myPhoto.layer.cornerRadius = myPhoto.frame.size.height/2
        myPhoto.clipsToBounds = true
    }
    
    func setConfigurationsButtons(){
        self.buttonEmail.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        self.buttonPhone.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        self.buttonGithub.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    
    @IBAction func sendEmail(sender: AnyObject) {
        var emailTitle = ""
        var messageBody = "\n\n\n\nE-mail send from the Eduardo Santi app"
        var toRecipents = [self.contact.emailAddress]
        var mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setMessageBody(messageBody, isHTML: false)
        mc.setToRecipients(toRecipents)
        
        self.presentViewController(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(controller:MFMailComposeViewController, didFinishWithResult result:MFMailComposeResult, error:NSError) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func call(sender: AnyObject) {
        let phone = "tel://" + self.contact.phoneNumber;
        let url: NSURL = NSURL(string: phone)!;
        UIApplication.sharedApplication().openURL(url);
    }
    
    @IBAction func goGithub(sender: AnyObject) {
        let github = self.contact.github;
        let url: NSURL = NSURL(string: github)!;
        UIApplication.sharedApplication().openURL(url);
    }
    
}
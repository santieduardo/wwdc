//
//  ESContactViewController.swift
//  Eduardo Santi
//
//  Created by Eduardo Santi on 24/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit
import MessageUI

class ESContactViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var labelMyName: UILabel!
    @IBOutlet weak var labelMyInformation: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendEmail(sender: AnyObject) {
        var emailTitle = ""
        var messageBody = "\n\n\n\nE-mail send from the Eduardo Santi app"
        var toRecipents = ["eduardo.bepid@gmail.com"]
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
        let phone = "tel://+555185319677";
        let url: NSURL = NSURL(string: phone)!;
        UIApplication.sharedApplication().openURL(url);
    }
    
    @IBAction func goGithub(sender: AnyObject) {
        let github = "http://github.com/santieduardo";
        let url: NSURL = NSURL(string: github)!;
        UIApplication.sharedApplication().openURL(url);
    }
    
}
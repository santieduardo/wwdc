//
//  ESTechnicalSkillViewController.swift
//  Eduardo Santi
//
//  Created by Eduardo Santi on 22/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit

class ESTechnicalSkillViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewSkills: UITableView!
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    var technicalSkill: ESTechnicalSkill = ESTechnicalSkill()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setBackgroundColor()
        self.setConfigurationsImage()
        self.setConfigurationsTitle()
    }
    
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 206/255, green: 31/255, blue: 110/255, alpha: 1.0) //CORRIGIR COLOR AQUI, NA CELULA E NA TABLE VIEW !!!!
    }
    
    func setConfigurationsImage(){
        myPhoto.layer.borderWidth = 1.0
        myPhoto.layer.masksToBounds = false
        myPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        myPhoto.layer.cornerRadius = myPhoto.frame.size.height/2
        myPhoto.clipsToBounds = true
    }
    
    func setConfigurationsTitle(){
        self.labelTitle.text = self.technicalSkill.title
        self.labelTitle.textColor = UIColor.whiteColor()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.backgroundColor = UIColor(red: 206/255, green: 31/255, blue: 110/255, alpha: 1.0)
        self.setConfigurationsTableView()
        
        var textExperiences = cell.viewWithTag(10) as! UILabel
        textExperiences.text = self.technicalSkill.experiences[indexPath.row]
        textExperiences.textColor = UIColor.whiteColor()
        
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.technicalSkill.experiences.count;
    }
    
    func setConfigurationsTableView(){
        self.tableViewSkills.backgroundColor = UIColor(red: 206/255, green: 31/255, blue: 110/255, alpha: 1.0)
        self.tableViewSkills.tableFooterView = UIView(frame: CGRectZero)
        self.tableViewSkills.separatorColor = UIColor.clearColor()
        self.tableViewSkills.allowsSelection = false
        
    }
}

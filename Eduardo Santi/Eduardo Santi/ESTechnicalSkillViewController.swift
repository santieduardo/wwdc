//
//  ESTechnicalSkillViewController.swift
//  Eduardo Santi
//  Contact: eduardoivaniskisanti@yahoo.com.br
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
        
        //method call for general settings
        self.setBackgroundColor()
        self.setConfigurationsImage()
        self.setConfigurationsTitle()
    }
    
    //set background color
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 216/255, green: 28/255, blue: 135/255, alpha: 1.0)
    }
    
    //set images configurations
    func setConfigurationsImage(){
        myPhoto.layer.borderWidth = 1.0
        myPhoto.layer.masksToBounds = false
        myPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        myPhoto.layer.cornerRadius = myPhoto.frame.size.height/2
        myPhoto.clipsToBounds = true
    }
    
    //set label title configurations
    func setConfigurationsTitle(){
        self.labelTitle.text = self.technicalSkill.title
        self.labelTitle.textColor = UIColor.whiteColor()
    }
    
    //set all necessaries data for each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.backgroundColor = UIColor(red: 216/255, green: 28/255, blue: 135/255, alpha: 1.0)
        self.setConfigurationsTableView()
        
        var textExperiences = cell.viewWithTag(10) as! UILabel
        textExperiences.text = self.technicalSkill.experiences[indexPath.row]
        textExperiences.textColor = UIColor.whiteColor()
        
        return cell;
    }
    
    //return the numbers of itens in the array
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.technicalSkill.experiences.count;
    }
    
    //set table view configurations
    func setConfigurationsTableView(){
        self.tableViewSkills.backgroundColor = UIColor(red: 216/255, green: 28/255, blue: 135/255, alpha: 1.0)
        self.tableViewSkills.tableFooterView = UIView(frame: CGRectZero)
        self.tableViewSkills.separatorColor = UIColor.clearColor()
        self.tableViewSkills.allowsSelection = false
    }
}
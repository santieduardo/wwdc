//
//  ESExperienceViewController.swift
//  Eduardo Santi
//
//  Created by Eduardo Santi on 21/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit

class ESExperienceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var tableViewExperience: UITableView!
    var experience: ESExperience = ESExperience()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundColor()
        self.setConfigurationsImage()
        self.setConfigurationsTitle()
    }
    
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
    }
    
    func setConfigurationsImage(){
        myPhoto.layer.borderWidth = 1.0
        myPhoto.layer.masksToBounds = false
        myPhoto.layer.borderColor = UIColor.whiteColor().CGColor
        myPhoto.layer.cornerRadius = myPhoto.frame.size.height/2
        myPhoto.clipsToBounds = true
    }
    
    func setConfigurationsTitle(){
        self.labelTitle.text = self.experience.title
        self.labelTitle.textColor = UIColor.whiteColor()
    }
    
    func setConfigurationsTableView(){
        self.tableViewExperience.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        self.tableViewExperience.tableFooterView = UIView(frame: CGRectZero)
        self.tableViewExperience.separatorColor = UIColor.clearColor()
        self.tableViewExperience.allowsSelection = false
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        self.setConfigurationsTableView()
        
        var textWork = cell.viewWithTag(10) as! UILabel
        textWork.text = self.experience.works[indexPath.row]
        textWork.textColor = UIColor.whiteColor()
        
        var textDate = cell.viewWithTag(20) as! UILabel
        textDate.text = self.experience.dates[indexPath.row]
        textDate.textColor = UIColor.whiteColor()
        
        var textDescription = cell.viewWithTag(30) as! UITextView
        textDescription.text = self.experience.descriptions[indexPath.row]
        textDescription.textColor = UIColor.whiteColor()
        textDescription.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        textDescription.editable = false
        textDescription.selectable = false
        textDescription.scrollEnabled = false
        
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.experience.works.count
    }
    
}

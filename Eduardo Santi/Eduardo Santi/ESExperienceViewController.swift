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
    @IBOutlet weak var labelMyName: UILabel!
    @IBOutlet weak var labelAboutMe: UILabel!
    var experience: ESExperience = ESExperience()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundColor()
    }
    
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        
        tableView.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.separatorColor = UIColor.clearColor()
        tableView.allowsSelection = false
        
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

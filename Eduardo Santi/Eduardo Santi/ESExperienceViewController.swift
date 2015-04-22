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
    
    
    var works = ["iOS Developer Student - BEPiD", "Web Developer - Agência Conjunto"]
    var dates = ["Feb 2015 - Present", "Oct 2014 - Feb 2015"]
    var descriptions = ["Um programa único e inovador para qualificar estudantes de graduação. A abordagem de aprendizagem é baseada em desafios, onde os estudantes interagem com outros alunos e professores para superar os desafios", "Criação de websites para campanhas institucionais, promocionais, comerciais e blogs para divulgação de notícias e eventos dos clientes"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        setValueImage()
        setValueLabelMyName()
        setValueLabelAboutMe()
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
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        
        tableView.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.separatorColor = UIColor.clearColor()
        tableView.allowsSelection = false
        
        var textWork = cell.viewWithTag(10) as! UILabel
        textWork.text = self.works[indexPath.row]
        textWork.textColor = UIColor.whiteColor()
        
        var textDate = cell.viewWithTag(20) as! UILabel
        textDate.text = self.dates[indexPath.row]
        textDate.textColor = UIColor.whiteColor()
        
        var textDescription = cell.viewWithTag(30) as! UITextView
        textDescription.text = self.descriptions[indexPath.row]
        textDescription.textColor = UIColor.whiteColor()
        textDescription.backgroundColor = UIColor(red: 31/255, green: 131/255, blue: 192/255, alpha: 1.0)
        textDescription.editable = false
        textDescription.selectable = false
        textDescription.scrollEnabled = false
        
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.works.count;
    }
    
}

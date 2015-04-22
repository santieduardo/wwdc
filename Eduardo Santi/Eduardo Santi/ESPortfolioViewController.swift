//
//  File.swift
//  Eduardo Santi
//
//  Created by Eduardo Santi on 21/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit

class ESPortfolioViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var labelMyName: UILabel!
    @IBOutlet weak var labelAboutMe: UILabel!
    
    var projects = ["Pet's Bay", "AGEFLOR", "Pink Cats - Website", "Pink Cats - Blog", "Pink Cats - Mães de meninas"]
    var descriptions = ["App para iOS feito pensando em conectar as pessoas que desejam adotar, doar ou que simplesmente querem fazer o bem para os animais - aguardando aprovação da App Store", "Website voltado para organizações e associações que se preocupam com o meio ambiente", "Website institucional contendo todos os produtos de sua coleção atual. Também contém games para meninas se divertirem", "Blog da empresa Pink Cats (Grupo Dakota) voltado para o público infantil feminino possibilitando diversão, entretenimento e informativos", "Blog da empresa Pink Cats (Grupo Dakota) voltado para informar e orientar como as mães devem educar, incentivar, motivar, cuidar e principalmente se divertir com suas filhas"]
    var url = ["", "http://www.ageflor.com.br", "http://www.pinkcats.com.br", "http://www.pinkcats.com.br/blog", "http://www.maesdemeninas.com.br"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
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
        
        cell.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
        
        tableView.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.separatorColor = UIColor.clearColor()
        tableView.allowsSelection = false
        
        var textProject = cell.viewWithTag(10) as! UILabel
        textProject.text = self.projects[indexPath.row]
        textProject.textColor = UIColor.whiteColor()
        
        var textDescription = cell.viewWithTag(20) as! UITextView
        textDescription.text = self.descriptions[indexPath.row]
        textDescription.textColor = UIColor.whiteColor()
        textDescription.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
        textDescription.editable = false
        textDescription.selectable = false
        textDescription.scrollEnabled = false
        
        var textURL = cell.viewWithTag(30) as! UILabel
        textURL.text = self.url[indexPath.row]
        textURL.textColor = UIColor.whiteColor()
        
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.projects.count;
    }

}
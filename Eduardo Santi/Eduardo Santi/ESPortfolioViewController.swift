//
//  ESPortfolioViewController.swift
//  Eduardo Santi
//
//  Created by Eduardo Santi on 21/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit

class ESPortfolioViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableViewPortfolio: UITableView!
    var portfolio: ESPortfolio = ESPortfolio()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setBackgroundColor()
    }
    
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
        self.setConfigurationsTableView()
        
        var textProject = cell.viewWithTag(10) as! UILabel
        textProject.text = self.portfolio.projects[indexPath.row]
        textProject.textColor = UIColor.whiteColor()
        
        var textDescription = cell.viewWithTag(20) as! UITextView
        textDescription.text = self.portfolio.descriptions[indexPath.row]
        textDescription.textColor = UIColor.whiteColor()
        textDescription.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
        textDescription.editable = false
        textDescription.selectable = false
        textDescription.scrollEnabled = false
        
        var textURL = cell.viewWithTag(30) as! UILabel
        textURL.text = self.portfolio.url[indexPath.row]
        textURL.textColor = UIColor.whiteColor()
        
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.portfolio.projects.count;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        if indexPath.row != 0{
            var textURL = cell.viewWithTag(30) as! UILabel
            var url = self.portfolio.url[indexPath.row]
            UIApplication.sharedApplication().openURL(NSURL(string: url)!)
            println(url)
        } else {
            self.showAlertView()
        }
    }
    
    func showAlertView(){
        var alert = UIAlertView(title: "Link Unavailable", message: "Aguardando aprovação da App Store", delegate: self, cancelButtonTitle: "OK")
        alert.show()
    }
    
    func setConfigurationsTableView(){
        self.tableViewPortfolio.backgroundColor = UIColor(red: 109/255, green: 2/255, blue: 175/255, alpha: 1.0)
        self.tableViewPortfolio.tableFooterView = UIView(frame: CGRectZero)
        self.tableViewPortfolio.separatorColor = UIColor.clearColor()
        //tableView.allowsSelection = false

    }

}
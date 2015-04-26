//
//  ESPortfolioViewController.swift
//  Eduardo Santi
//  Contact: eduardoivaniskisanti@yahoo.com.br
//  Created by Eduardo Santi on 21/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit
import MediaPlayer
import MobileCoreServices

class ESPortfolioViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableViewPortfolio: UITableView!
    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    
    var portfolio: ESPortfolio = ESPortfolio()
    var moviePlayer: MPMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //method call for general settings
        self.setBackgroundColor()
        self.setConfigurationsImage()
        self.setConfigurationsTitle()
    }
    
    //set background color
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 146/255, green: 43/255, blue: 218/255, alpha: 1.0)
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
        self.labelTitle.text = self.portfolio.title
        self.labelTitle.textColor = UIColor.whiteColor()
    }

    //set all necessaries data for each cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.backgroundColor = UIColor(red: 146/255, green: 43/255, blue: 218/255, alpha: 1.0)
        self.setConfigurationsTableView()
        
        var textProject = cell.viewWithTag(10) as! UILabel
        textProject.text = self.portfolio.projects[indexPath.row]
        textProject.textColor = UIColor.whiteColor()
        
        var textDescription = cell.viewWithTag(20) as! UITextView
        textDescription.text = self.portfolio.descriptions[indexPath.row]
        textDescription.textColor = UIColor.whiteColor()
        textDescription.backgroundColor = UIColor(red: 146/255, green: 43/255, blue: 218/255, alpha: 1.0)
        textDescription.editable = false
        textDescription.selectable = false
        textDescription.scrollEnabled = false
        
        var textURL = cell.viewWithTag(30) as! UILabel
        var underlineAttriString = NSAttributedString(string: self.portfolio.url[indexPath.row], attributes: [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue])
        textURL.attributedText = underlineAttriString
        textURL.textColor = UIColor.whiteColor()
        
        return cell;
    }
    
    //return the numbers of itens in the array
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.portfolio.projects.count;
    }
    
    //return one action for each selected cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        cell.backgroundColor = UIColor(red: 146/255, green: 43/255, blue: 218/255, alpha: 1.0)
        self.setConfigurationsTableView()
        
        if indexPath.row == 0{
            self.playMovie()
        }else{
            var textProject = cell.viewWithTag(10) as! UILabel
            textProject.text = self.portfolio.projects[indexPath.row]
            textProject.textColor = UIColor.whiteColor()
            
            var textDescription = cell.viewWithTag(20) as! UITextView
            textDescription.text = self.portfolio.descriptions[indexPath.row]
            textDescription.textColor = UIColor.whiteColor()
            textDescription.backgroundColor = UIColor(red: 146/255, green: 43/255, blue: 218/255, alpha: 1.0)
            textDescription.editable = false
            textDescription.selectable = false
            textDescription.scrollEnabled = false
            
            var textURL = cell.viewWithTag(30) as! UILabel
            textURL.backgroundColor = UIColor(red: 146/255, green: 43/255, blue: 218/255, alpha: 1.0)
            textURL.text = self.portfolio.url[indexPath.row]
            textURL.textColor = UIColor.whiteColor()
            
            self.goWebsite(self.portfolio.url[indexPath.row])
        }
        
        self.tableViewPortfolio.reloadData()
    }
    
    //start the pat's bay movie
    func playMovie(){
        let path = NSBundle.mainBundle().pathForResource("petsbay", ofType:"mov")
        let url = NSURL.fileURLWithPath(path!)
        self.moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = self.moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
            self.tabBarController?.tabBar.hidden = true
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "dismissPlayer", name: MPMoviePlayerPlaybackDidFinishNotification, object: player)
            NSNotificationCenter.defaultCenter().addObserver(self, selector: "dismissPlayer", name: MPMoviePlayerDidExitFullscreenNotification, object: player)
        }
    }
    
    //close the pat's bay movie
    func dismissPlayer(){
        moviePlayer.stop()
        moviePlayer.view.removeFromSuperview()
        tableViewPortfolio.reloadData()
        self.tabBarController?.tabBar.hidden = false
    }
    
    //go to the website of selected cell
    func goWebsite(url: String){
        var link: NSURL = NSURL(string: url)!
        UIApplication.sharedApplication().openURL(link)
    }
    
    //set table view configurations
    func setConfigurationsTableView(){
        self.tableViewPortfolio.backgroundColor = UIColor(red: 146/255, green: 43/255, blue: 218/255, alpha: 1.0)
        self.tableViewPortfolio.tableFooterView = UIView(frame: CGRectZero)
        self.tableViewPortfolio.separatorColor = UIColor.clearColor()
    }
}
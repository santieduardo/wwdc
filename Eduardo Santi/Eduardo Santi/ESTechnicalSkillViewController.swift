//
//  ESTechnicalSkillViewController.swift
//  Eduardo Santi
//
//  Created by Eduardo Santi on 22/04/15.
//  Copyright (c) 2015 Eduardo Santi. All rights reserved.
//

import UIKit

class ESTechnicalSkillViewController: UIViewController {
    
    var technicalSkill: ESTechnicalSkill = ESTechnicalSkill()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setBackgroundColor()
    }
    
    func setBackgroundColor(){
        self.view.backgroundColor = UIColor(red: 206/255, green: 31/255, blue: 110/255, alpha: 1.0) //CORRIGIR COLOR !!!!
    }
    
    
}

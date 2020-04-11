//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Mac on 11.04.2020.
//  Copyright © 2020 Alexey Barinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var dayLabel: UILabel!
    
    @IBOutlet var monthLabel: UILabel!
    
    @IBOutlet var yearlabel: UILabel!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var dayTF: UITextField!
    
    @IBOutlet var monthTF: UITextField!
    
    @IBOutlet var yearTF: UITextField!
    
    
    @IBAction func findDay(_ sender: UIButton) {
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        guard let day = dayTF.text, let month = monthTF.text, let year = yearTF.text else {return}
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else {return}
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date)
        
        resultLabel.text = weekDay
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        }
        
        
    }





//
//  TodayViewController.swift
//  DateWidget
//
//  Created by Zach Simone on 8/7/16.
//  Copyright © 2016 Zachary Simone. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet var date: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale.current
        
        let currentDate = NSDate()
        dateFormatter.dateStyle = DateFormatter.Style.full
        let today = dateFormatter.string(from: currentDate as Date)
        
        date.text = String(today)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}

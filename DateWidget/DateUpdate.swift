//
//  DateUpdate.swift
//  Date
//
//  Created by Zach Simone on 11/7/16.
//  Copyright © 2016 Zachary Simone. All rights reserved.
//

import Foundation

class DateUpdater {
    
    func update() -> String {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale.current
        
        let currentDate = NSDate()
        dateFormatter.dateStyle = DateFormatter.Style.full
        let today = dateFormatter.string(from: currentDate as Date)
        
        return(String(today))
    }
}

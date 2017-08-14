//
//  Utilities.swift
//  bttf
//
//  Created by Vy Nguyen on 8/13/17.
//  Copyright © 2017 Vy Nguyen. All rights reserved.
//

import Foundation

class Utilities {
    func getCurrentYear () -> String {
        let calendar = Calendar.current
        return String(calendar.component(.year, from: getDate()))
    }
    
    // 2018
    func getLetterAtIndex(str: String, location: Int) -> String {
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }
    
    func getRandomYear() -> String {
        // Ensures that the output will always contain 4 digits
        return String(arc4random_uniform(3500) + 1000)
    }
    
    func getCurrentTime() -> String {
        let date = getDate()
        
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: getDate())
        return timeString
    }
    
    func getDate() -> Date {
        return Date()
    }
}

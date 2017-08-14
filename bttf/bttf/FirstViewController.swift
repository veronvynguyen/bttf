//
//  FirstViewController.swift
//  bttf
//
//  Created by Vy Nguyen on 8/5/17.
//  Copyright © 2017 Vy Nguyen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var yearFirstNumLabel: UILabel!
    @IBOutlet weak var yearSecNumLabel: UILabel!
    @IBOutlet weak var yearThirdNumLabel: UILabel!
    @IBOutlet weak var yearLastNumLabel: UILabel!
    @IBOutlet weak var todayDateLabel: UILabel!
    
    var utils: Utilities = Utilities()
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let year = utils.getCurrentYear()
        yearFirstNumLabel.text = utils.getLetterAtIndex(str: year, location: 0)
        yearSecNumLabel.text = utils.getLetterAtIndex(str: year, location: 1)
        yearThirdNumLabel.text = utils.getLetterAtIndex(str: year, location: 2)
        yearLastNumLabel.text = utils.getLetterAtIndex(str: year, location: 3)
        setupTimer()
    }
    
    func setupTimer() {
       timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { (timer) in self.showTime()
       })
    }
    
    func showTime () {
        var timeStr = utils.getCurrentTime()
        todayDateLabel.text = timeStr
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


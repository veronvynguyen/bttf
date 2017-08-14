//
//  SecondViewController.swift
//  bttf
//
//  Created by Vy Nguyen on 8/5/17.
//  Copyright © 2017 Vy Nguyen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    
    let utils = Utilities()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func timeTravelBtnClicked(_ sender: Any) {
        let year = utils.getRandomYear()
        animateItem(duration: 0.5, delay: 0, object: firstLabel)
        animateItem(duration: 0.5, delay: 0.2, object: secondLabel)
        animateItem(duration: 0.5, delay: 0.4, object: thirdLabel)
        animateItem(duration: 0.5, delay: 0.6, object: lastLabel)
        UIView.animate(withDuration: 0.5, animations: {
            self.firstLabel.center.x += self.view.bounds.width
            self.secondLabel.center.x += self.view.bounds.width
            self.thirdLabel.center.x += self.view.bounds.width
            self.lastLabel.center.x += self.view.bounds.width
            
        })
        firstLabel.text = utils.getLetterAtIndex(str: year, location: 0)
        secondLabel.text = utils.getLetterAtIndex(str: year, location: 1)
        thirdLabel.text = utils.getLetterAtIndex(str: year, location: 2)
        lastLabel.text = utils.getLetterAtIndex(str: year, location: 3)
    }
    
    func animateItem (duration: Double, delay: Double, object: UIView) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseOut, animations: { object.center.x += self.view.bounds.width}) {(true) in
            // optional code to complete at the end of animation
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}


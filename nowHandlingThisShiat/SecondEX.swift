//
//  SecondEX.swift
//  nowHandlingThisShiat
//
//  Created by Simon Panduro Norstedt on 23/01/15.
//  Copyright (c) 2015 Simon Panduro Norstedt. All rights reserved.
//

import UIKit

class SecondEX: UIViewController {

    
    var timerCount = 10
    var timer : NSTimer = NSTimer()
    
    @IBOutlet weak var CountR: UILabel!
    
    @IBAction func jumptoSecRe (sender: AnyObject){
        
        let twore = self.storyboard?.instantiateViewControllerWithIdentifier("2re") as UIViewController
        
        self.navigationController?.pushViewController(twore, animated: false)
    }
    
    func Counting(){
        CountR.text = String(timerCount)
        timerCount -= 1
        if timerCount < 0{
                  jumptoSecRe(self)
            self.timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true
        
        println(timerCount)
        if timerCount >= 0 {
            self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
            
        


        // Do any additional setup after loading the view.
        }
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

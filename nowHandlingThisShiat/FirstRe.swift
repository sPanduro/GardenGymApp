//
//  FirstRe.swift
//  nowHandlingThisShiat
//
//  Created by Simon Panduro Norstedt on 22/01/15.
//  Copyright (c) 2015 Simon Panduro Norstedt. All rights reserved.
//

import UIKit

class FirstRe: UIViewController {
    
    var timerCount = 10
    var timerRunning = false // for pausing, info button
    var timer : NSTimer = NSTimer()
    
    
    @IBOutlet weak var CountLabel: UILabel!
    
    @IBAction func jumptoNews (sender: AnyObject){
        let twoex = self.storyboard?.instantiateViewControllerWithIdentifier("2ex") as UIViewController
        println("new")
        
    self.navigationController?.pushViewController(twoex, animated: false)
        
    }
    
    //forsøg på at anvende en segue til at flytte til ny view controller:
    
    //  self.performSegueWithIdentifier("2ex", sender: self)
    
    //override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObejct!){
        
    // if segue.identifier == "2ex" {
    // }
    // }
    /*"override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "Load View") {
    
        }
    }*/
    
    

    
    //giver værdi af timerCount til labellen og blir derefter reduceret med 1
    func Count(){
        CountLabel.text = String(timerCount)
        timerCount -= 1
        if timerCount < 0{
            jumptoNews(self)
            self.timer.invalidate()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true
        
        if timerCount >= 0{
            self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Count"), userInfo: nil, repeats: true)
            timerRunning == true
          
        }

        // Do any additional setup after loading the view.
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

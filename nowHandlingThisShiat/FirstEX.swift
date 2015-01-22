//
//  FirstEX.swift
//  nowHandlingThisShiat
//
//  Created by Simon Panduro Norstedt on 20/01/15.
//  Copyright (c) 2015 Simon Panduro Norstedt. All rights reserved.
//

import UIKit

class FirstEX: UIViewController{
    
    //af en eller anden grund crasher programmet når jeg pusher denne viewcontroller.
    // nedenfor er et forsøg på at lave en timer. Kan dog ikke se om den virker, da mit label forsvinder når jeg ser siden i simulatoren. Kender i til det problem?
    
    var timerCount = 5
    var timerRunning = false
    var timer : NSTimer = NSTimer()
    

    @IBOutlet weak var TimerLabell: UILabel!
    
    
    @IBAction func jumptoNew (sender: AnyObject){
        println("mkl")
        let onere = self.storyboard?.instantiateViewControllerWithIdentifier("1re") as UIViewController
        
        self.navigationController?.pushViewController(onere, animated: false)
    }
    
   //giver værdi af timerCount til labellen og blir derefter reduceret med 1
    func Counting(){
        TimerLabell.text = String(timerCount)
        timerCount -= 1
        if timerCount == 0{
            self.timer.invalidate()
            jumptoNew(self)
        }
    }
   
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
      /*  if timerRunning == false{
            var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
            */
        
        if timerCount >= 0 && timerRunning == false{
            self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
            timerRunning == true
        }
            /*
        else{
            
            let onere = self.storyboard?.instantiateViewControllerWithIdentifier("1re") as UIViewController
            
            self.navigationController?.pushViewController(onere, animated: false)
            
        }*/
        

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

//
//  ViewController.swift
//  nowHandlingThisShiat
//
//  Created by Simon Panduro Norstedt on 24/10/14.
//  Copyright (c) 2014 Simon Panduro Norstedt. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true
       }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var FrontP: UIView!
    
    @IBOutlet weak var tabbar: UIImageView!
    
    @IBOutlet weak var WorkOUtCircuitAndInstru: UIImageView!
    
    @IBAction func CircuitButton(sender: AnyObject) {
    }
    
    @IBAction func StartWorkout(sender: AnyObject) {
    }
    @IBAction func WorkoutButton(sender: AnyObject) {
        
    //alternativ til at pushe en view controller:
        
      /*  let circuitView = self.storyboard?.instantiateViewControllerWithIdentifier("circuit") as UIViewController
        self.navigationController?.pushViewController(circuitView, animated: false) */
        
    // og nib versionen:
        
        //let circuitView = CircuitTrainingViewController(nibName: "circuit", bundle: nil)
        
        
    }
    
    /*
    
    }
    //denne kode brugte jeg til at sætte en række pages op man kan swipe igennem. Virker ikke pt, men er lidt i tvivl om det kan betale sig at bruge en page viewcontroller i mit tilfælde? eller er det bedre med en navigation controller?
    

    var myViewControllers = Array(count: 3, repeatedValue:UIViewController())
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let pvc = segue.destinationViewController as UIPageViewController
        
        pvc.dataSource = self
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        
        var vc0 = storyboard.instantiateViewControllerWithIdentifier("core1") as UIViewController
        var vc1 = storyboard.instantiateViewControllerWithIdentifier("core2") as UIViewController
        var vc2 = storyboard.instantiateViewControllerWithIdentifier("core3") as UIViewController
        
        self.myViewControllers = [vc0, vc1, vc2]
        
        pvc.setViewControllers([myViewControllers[0]], direction:.Forward, animated:false, completion:nil)
        
        println("Loaded")
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var currentIndex =  find(self.myViewControllers, viewController)!+1
        if currentIndex >= self.myViewControllers.count {
            return nil
        }
        return self.myViewControllers[currentIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var currentIndex =  find(self.myViewControllers, viewController)!-1
        if currentIndex < 0 {
            return nil
        }
        return self.myViewControllers[currentIndex]
    }


    */
    
    
    
}

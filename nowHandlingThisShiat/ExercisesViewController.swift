//
//  ExercisesViewController.swift
//  nowHandlingThisShiat
//
//  Created by Simon Panduro Norstedt on 29/10/14.
//  Copyright (c) 2014 Simon Panduro Norstedt. All rights reserved.
//

import UIKit
// UIPageViewControllerDataSource

class ExercisesViewController: UIViewController{

//    @IBOutlet weak var bagground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var setCircuitTime: UIImageView!
    
    
    /*
    
    
    @IBAction func CoreButton(sender: AnyObject) {
        
        let swipe = self.storyboard?.instantiateViewControllerWithIdentifier("swiping") as UIPageViewController
        
        //let circuitView = CircuitTrainingViewController(nibName: "circuit", bundle: nil)
        
        self.navigationController?.pushViewController(swipe, animated: true)
    }
    
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
    }*/

}

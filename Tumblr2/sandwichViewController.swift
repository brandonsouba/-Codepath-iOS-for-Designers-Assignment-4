//
//  sandwichViewController.swift
//  Tumblr2
//
//  Created by Brandon Souba on 5/31/15.
//  Copyright (c) 2015 BrandonSouba. All rights reserved.
//

import UIKit

class sandwichViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var buttonOne: UIImageView!
    @IBOutlet weak var buttonTwo: UIImageView!
    @IBOutlet weak var buttonThree: UIImageView!
    @IBOutlet weak var buttonFour: UIImageView!
    @IBOutlet weak var buttonFive: UIImageView!
    @IBOutlet weak var buttonSix: UIImageView!
    @IBOutlet weak var nevermindButton: UIImageView!




    
    override func viewDidLoad() {
        println("loaded")
        
        var initialPosition1:CGFloat
        var initialPosition2:CGFloat
        var initialPosition3:CGFloat
        var initialPosition4:CGFloat
        var initialPosition5:CGFloat
        var initialPosition6:CGFloat
        
        initialPosition1 = buttonOne.center.y
        initialPosition2 = buttonTwo.center.y
        initialPosition3 = buttonThree.center.y
        initialPosition4 = buttonFour.center.y
        initialPosition5 = buttonFive.center.y
        initialPosition6 = buttonSix.center.y

        
        
        let buttons = [buttonOne,buttonTwo,buttonThree,buttonFour,buttonFive,buttonSix]
        for index in buttons {
            index.center.y = 1500
        }
        
        
        self.mainView.alpha = 0
        super.viewDidLoad()
        UIView.animateWithDuration((0.2), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.mainView.alpha = 1
            }, completion: nil)
        
        
        func delay(delay:Double, closure:()->()) {
            dispatch_after(
                dispatch_time(
                    DISPATCH_TIME_NOW,
                    Int64(delay * Double(NSEC_PER_SEC))
                ),
                dispatch_get_main_queue(), closure)
        }
        
        delay(0.001) {


        UIView.animateWithDuration((0.5), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.buttonOne.center.y = initialPosition1
            self.buttonTwo.center.y = initialPosition2
            self.buttonSix.center.y = initialPosition2
            }, completion: nil)
        
        UIView.animateWithDuration((0.4), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.buttonThree.center.y = initialPosition3
            self.buttonFour.center.y = initialPosition4
            self.buttonFive.center.y = initialPosition5
            }, completion: nil)


        }

        // Do any additional setup after loading the view.
    }
    @IBAction func didPressNevermind(sender: AnyObject) {
        var yPos:CGFloat!
        yPos = -1000

            
            
            UIView.animateWithDuration((0.5), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.buttonOne.center.y = yPos
                self.buttonTwo.center.y = yPos
                self.buttonSix.center.y = yPos
                }, completion: nil)
            
            UIView.animateWithDuration((0.4), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.buttonThree.center.y = yPos
                self.buttonFour.center.y = yPos
                self.buttonFive.center.y = yPos
                }, completion: nil)
            
        func delay(delay:Double, closure:()->()) {
            dispatch_after(
                dispatch_time(
                    DISPATCH_TIME_NOW,
                    Int64(delay * Double(NSEC_PER_SEC))
                ),
                dispatch_get_main_queue(), closure)
        }
        
        delay(0.25) {
        self.dismissViewControllerAnimated(true, completion: nil)
        println("awesome")
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

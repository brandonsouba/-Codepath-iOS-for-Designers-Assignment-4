//
//  HomeViewController.swift
//  Tumblr2
//
//  Created by Brandon Souba on 5/30/15.
//  Copyright (c) 2015 BrandonSouba. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var loginModal: UIView!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func didPressLogin(sender: AnyObject) {
        UIView.animateWithDuration((0.3), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.loginModal.center.y = 221
            self.textField.becomeFirstResponder()
            
            }, completion: nil)
        
        
    }
    @IBAction func didPressCancel(sender: AnyObject) {
        UIView.animateWithDuration((0.3), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            self.loginModal.center.y = 1000
            
            
            }, completion: nil)
        self.textField.resignFirstResponder()

    }
    override func viewDidLoad() {
        self.loginModal.center.y = 1000
        println("awesome")
        


        
        super.viewDidLoad()

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

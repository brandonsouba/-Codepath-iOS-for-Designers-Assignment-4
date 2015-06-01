//
//  TabViewController.swift
//  Tumblr2
//
//  Created by Brandon Souba on 5/30/15.
//  Copyright (c) 2015 BrandonSouba. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {
    @IBOutlet weak var conventView: UIView!
    @IBOutlet weak var contentView: UIView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var composeViewController: UIViewController!
    var SandwichViewController: UIViewController!


    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var bubble: UIImageView!
    
    

    override func viewDidLoad() {
        UIView.animateWithDuration(2.0, delay:0, options: .Repeat | .Autoreverse, animations: {
            
            self.bubble.center.y = (self.bubble.center.y + 10)
            
            }, completion: nil)

        
        

        super.viewDidLoad()
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController =  storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as! UIViewController
        
        searchViewController =  storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as! UIViewController
        
        accountViewController =  storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as! UIViewController
        
        trendingViewController =  storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as! UIViewController
    
        composeViewController =  storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as! UIViewController
        
        SandwichViewController =  storyboard.instantiateViewControllerWithIdentifier("sandwichViewController") as! UIViewController
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTabPress(sender: AnyObject) {
//            homeButton.selected = true
        
    }
    
    @IBAction func PressHome(sender: UIButton) {
        let buttons = [homeButton,searchButton,profileButton,trendingButton]
        for index in buttons {
            index.selected = false
        }
        sender.selected = true
    }
    
        
    @IBAction func onHomeButton(sender: AnyObject) {
    addChildViewController(homeViewController)
    var frame = CGRect(x: 0, y: 0, width: conventView.frame.size.width, height: conventView.frame.size.height)
    homeViewController.view.frame = conventView.bounds
    conventView.addSubview(homeViewController.view)
    homeViewController.didMoveToParentViewController(self)
        
    }
    
    @IBAction func onSearchButton(sender: AnyObject) {
            self.bubble.alpha = 0
        addChildViewController(searchViewController)
        var frame = CGRect(x: 0, y: 0, width: conventView.frame.size.width, height: conventView.frame.size.height)
        searchViewController.view.frame = conventView.bounds
        conventView.addSubview(searchViewController.view)
        searchViewController.didMoveToParentViewController(self)
    }
    
    @IBOutlet weak var onProfileButton: UIButton!
    
    @IBAction func onProfileButton(sender: AnyObject) {
        addChildViewController(accountViewController)
        var frame = CGRect(x: 0, y: 0, width: conventView.frame.size.width, height: conventView.frame.size.height)
        accountViewController.view.frame = conventView.bounds
        conventView.addSubview(accountViewController.view)
        accountViewController.didMoveToParentViewController(self)
        
    }
    @IBAction func onTrendingButton(sender: AnyObject) {
        addChildViewController(trendingViewController)
        var frame = CGRect(x: 0, y: 0, width: conventView.frame.size.width, height: conventView.frame.size.height)
        trendingViewController.view.frame = conventView.bounds
        conventView.addSubview(trendingViewController.view)
        trendingViewController.didMoveToParentViewController(self)
    }
    
    @IBAction func didPressCompose(sender: AnyObject) {
//        addChildViewController(SandwichViewController)
////        var frame = CGRect(x: 0, y: 0, width: conventView.frame.size.width, height: 1136)
//        SandwichViewController.view.frame = conventView.bounds
//        conventView.addSubview(SandwichViewController.view)
//        SandwichViewController.didMoveToParentViewController(self)
        
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

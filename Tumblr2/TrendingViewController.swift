//
//  TrendingViewController.swift
//  Tumblr2
//
//  Created by Brandon Souba on 5/30/15.
//  Copyright (c) 2015 BrandonSouba. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {
    @IBOutlet weak var loadingImages: UIImageView!

    @IBOutlet weak var loadingBackground: UIView!
    @IBOutlet weak var trendingBackground: UIView!
    override func viewDidLoad() {
        func delay(delay:Double, closure:()->()) {
            dispatch_after(
                dispatch_time(
                    DISPATCH_TIME_NOW,
                    Int64(delay * Double(NSEC_PER_SEC))
                ),
                dispatch_get_main_queue(), closure)
        }
        
        delay(1) {
            UIView.animateWithDuration((0.5), delay: 0.0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.loadingBackground.alpha = 0
                }, completion: nil)
  
        }

        
        
        loadingImages.animationImages = [
            UIImage(named: "loading-1.png")!,
            UIImage(named: "loading-2.png")!,
            UIImage(named: "loading-3.png")!

        ]
        
        loadingImages.animationDuration = 0.5
        loadingImages.startAnimating()


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

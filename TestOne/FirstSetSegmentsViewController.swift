//
//  FirstSetSegmentsViewController.swift
//  TestOne
//
//  Created by Eeja, Srujana [GCB-OT] on 10/7/16.
//  Copyright © 2016 Eeja, Srujana [GCB-OT]. All rights reserved.
//

import UIKit

class FirstSetSegmentsViewController: UIViewController {
    
    @IBOutlet weak var containerOrg: UIView!
    
    @IBOutlet weak var firstSetSegments: UISegmentedControl!
    
    weak var segmentedViewController: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func switchContainerViews(sender: AnyObject) {
        
        if firstSetSegments.selectedSegmentIndex == 0 || firstSetSegments.selectedSegmentIndex == 1 || firstSetSegments.selectedSegmentIndex == 2{
            UIView.animateWithDuration(0.5, animations: {
                self.containerOrg.alpha = 1
                
            })
        }else if firstSetSegments.selectedSegmentIndex == 3{
            
            var inputViewController: UIViewController?
            inputViewController = self.storyboard?.instantiateViewControllerWithIdentifier("inputViewController")
            inputViewController!.view.translatesAutoresizingMaskIntoConstraints = false
            self.addChildViewController(inputViewController!)
            
//            UIView.animateWithDuration(0.5, animations: {
//                self.containerOrg.alpha = 0
//            })
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

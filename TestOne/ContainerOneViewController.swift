//
//  ContainerOneViewController.swift
//  TestOne
//
//  Created by Eeja, Srujana [GCB-OT] on 10/11/16.
//  Copyright © 2016 Eeja, Srujana [GCB-OT]. All rights reserved.
//

import UIKit

class ContainerOneViewController: UIViewController {
    
    var vc: UIViewController!
    var segueIdentifier: String!
    var lastViewController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.segueIdentifier = "organizerSegue"
        self.performSegueWithIdentifier(self.segueIdentifier, sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segueIndentifierRecievedFromParent(segmentedControl: String){
        if segmentedControl == "organizer"{
            
            self.segueIdentifier = "organizerSegue"
            self.performSegueWithIdentifier(self.segueIdentifier, sender: nil)
            
        }else if segmentedControl == "input"{
            
            self.segueIdentifier = "inputSegue"
            self.performSegueWithIdentifier(self.segueIdentifier, sender: nil)
        }
        else if segmentedControl == "analysis"{
            self.segueIdentifier = "analysisSegue"
            self.performSegueWithIdentifier(self.segueIdentifier, sender: nil)
        }
            else if segmentedControl == "synthesis"{
                self.segueIdentifier = "synthesisSegue"
                self.performSegueWithIdentifier(self.segueIdentifier, sender: nil)
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segueIdentifier{
            if lastViewController != nil{
                self.lastViewController.view.removeFromSuperview()
            }
            
            vc = segue.destinationViewController 
            self.addChildViewController(vc)
            vc.view.frame = CGRect(x:0, y:0, width: self.view.frame.width, height: self.view.frame.height)
            self.view.addSubview(vc.view)
            vc.didMoveToParentViewController(self)
            lastViewController = vc
        }
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

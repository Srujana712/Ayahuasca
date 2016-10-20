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
    
    override func viewWillAppear(_ animated: Bool) {
        self.segueIdentifier = "organizerSegue"
        self.performSegue(withIdentifier: self.segueIdentifier, sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segueIndentifierRecievedFromParent(_ segmentedControl: String){
        if segmentedControl == "organizer"{
            
            self.segueIdentifier = "organizerSegue"
            self.performSegue(withIdentifier: self.segueIdentifier, sender: nil)
            
        }else if segmentedControl == "input"{
            
            self.segueIdentifier = "inputSegue"
            self.performSegue(withIdentifier: self.segueIdentifier, sender: nil)
        }
        else if segmentedControl == "analysis"{
            self.segueIdentifier = "analysisSegue"
            self.performSegue(withIdentifier: self.segueIdentifier, sender: nil)
        }
            else if segmentedControl == "synthesis"{
                self.segueIdentifier = "synthesisSegue"
                self.performSegue(withIdentifier: self.segueIdentifier, sender: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier{
            if lastViewController != nil{
                self.lastViewController.view.removeFromSuperview()
            }
            
            vc = segue.destination 
            self.addChildViewController(vc)
            vc.view.frame = CGRect(x:0, y:0, width: self.view.frame.width, height: self.view.frame.height)
            self.view.addSubview(vc.view)
            vc.didMove(toParentViewController: self)
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

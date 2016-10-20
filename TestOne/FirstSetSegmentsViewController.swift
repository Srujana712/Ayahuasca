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

    var containerView: ContainerOneViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func switchContainerViews(_ sender: AnyObject) {
        
        switch firstSetSegments.selectedSegmentIndex {
        case 0:
              containerView!.segueIndentifierRecievedFromParent("organizer")
        case 1:
            containerView!.segueIndentifierRecievedFromParent("input")
        case 2:
            containerView!.segueIndentifierRecievedFromParent("analysis")
        case 3:
            containerView!.segueIndentifierRecievedFromParent("synthesis")

        default:
            containerView!.segueIndentifierRecievedFromParent("organizer")

        }
        
//        if firstSetSegments.selectedSegmentIndex == 0 || firstSetSegments.selectedSegmentIndex == 1 || firstSetSegments.selectedSegmentIndex == 2{
//            
//            containerView!.segueIndentifierRecievedFromParent("organizer")
//            
//        }else if firstSetSegments.selectedSegmentIndex == 3{
//            
//            containerView!.segueIndentifierRecievedFromParent("input")
//        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerOne"{
            containerView = segue.destination as? ContainerOneViewController
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

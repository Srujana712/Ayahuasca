//
//  ViewController.swift
//  TestOne
//
//  Created by Eeja, Srujana [GCB-OT] on 9/27/16.
//  Copyright © 2016 Eeja, Srujana [GCB-OT]. All rights reserved.
//

import UIKit


class LoginandSignUpViewController: UIViewController {

    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var signUP: UIButton!
    @IBOutlet weak var forgotUsernamePass: UIButton!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonsStyling()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ _animated: Bool) {
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewWillDisappear(_ _animated: Bool) {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func buttonsStyling(){
        signIn.layer.cornerRadius = 5
        signIn.layer.borderWidth = 1
        signIn.layer.borderColor = UIColor.black.cgColor
        signIn.backgroundColor = UIColor.clear
        userName.backgroundColor = UIColor.clear
        passwordField.backgroundColor = UIColor.clear
        
    }
    
    @IBAction func userSignUp(_ sender: AnyObject) {

        let signViewController: UIViewController = storyBoard.instantiateViewController(withIdentifier: "createProfilePage")
        self.navigationController?.pushViewController(signViewController, animated: true)
    }
    
    @IBAction func sucessfulSignIn() {
        
//          self.performSegueWithIdentifier("firstSetSegments", sender: self)
 
        let firstSetSegmentsViewController: UIViewController = storyBoard.instantiateViewController(withIdentifier: "firstSetSegments")
        self.navigationController?.pushViewController(firstSetSegmentsViewController, animated: true)
    }
    
    @IBAction func forgotUsrPwd() {
    }
    
}


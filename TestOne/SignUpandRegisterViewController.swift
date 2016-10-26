//
//  SignUpandRegisterViewController.swift
//  TestOne
//
//  Created by Eeja, Srujana [GCB-OT] on 10/6/16.
//  Copyright © 2016 Eeja, Srujana [GCB-OT]. All rights reserved.
//

import UIKit

class SignUpandRegisterViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var uploadProfilePic: UIButton!
    @IBOutlet weak var profilePicImageViwe: UIImageView!
    @IBOutlet weak var addLaterProfilePic: UIButton!
    @IBOutlet weak var aboutYourself: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textViewDisplay()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDisplay(){
        aboutYourself.layer.cornerRadius = 5
        aboutYourself.layer.borderColor = UIColor.gray.cgColor
        aboutYourself.layer.borderWidth = 1
    }
    
    @IBAction func addLaterProfilePic(_ sender: AnyObject) {
        uploadProfilePic.isHidden = true
        addLaterProfilePic.isHidden = true
    }
    
    @IBAction func selectProfilePicture(_ sender: AnyObject) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(imagePicker, animated:true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        profilePicImageViwe.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
        addLaterProfilePic.isHidden = true
        uploadProfilePic.isHidden = true
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

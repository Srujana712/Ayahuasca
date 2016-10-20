//
//  InputViewController.swift
//  TestOne
//
//  Created by Eeja, Srujana [GCB-OT] on 10/11/16.
//  Copyright © 2016 Eeja, Srujana [GCB-OT]. All rights reserved.
//

import UIKit

class InputViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var inputPickerView: UIPickerView!
    @IBOutlet weak var pickerCancelBtn: UIButton!
    @IBOutlet weak var pickerDoneBtn: UIButton!
    @IBOutlet weak var selectInputBtn: UIButton!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.inputPickerView.delegate = self
        self.inputPickerView.dataSource = self
        
        pickerData = ["Video", "Photo", "Text/File", "Link (url, etc)", "Email Thread"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectInputAction(_ sender: AnyObject) {
        self.inputPickerView.isHidden = false
        self.pickerCancelBtn.isHidden = false
        self.pickerDoneBtn.isHidden = false
    }

    func numberOfComponents(in picker: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    @IBAction func cancelActionPickerView(_ sender: AnyObject) {
        
        self.inputPickerView.isHidden = true
        self.pickerCancelBtn.isHidden = true
        self.pickerDoneBtn.isHidden = true
    }

    @IBAction func doneActionPickerView(_ sender: AnyObject) {
        
        self.inputPickerView.isHidden = true
        self.pickerDoneBtn.isHidden = true
        self.pickerCancelBtn.isHidden = true
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

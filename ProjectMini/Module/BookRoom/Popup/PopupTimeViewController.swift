//
//  PopupTimeViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/5/21.
//

import UIKit

protocol PopupcheckTime {
    func closeTap(_ timeStart: String, _ timeEnd: String)
}
class PopupTimeViewController: UIViewController {

    @IBOutlet weak var btnSuccess: UIButton!
    
    @IBOutlet weak var txtStart: UITextField!
    
    @IBOutlet weak var txtEnd: UITextField!
    
    var timeStart = ""
    var timeEnd = ""
    
    var closePopup: PopupcheckTime?
    
    let timepicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let toolbar1  = UIToolbar()
        toolbar1.sizeToFit()
        let toolbar2  = UIToolbar()
        toolbar2.sizeToFit()
        let donebtn1 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneclick1))
        let donebtn2 = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneclick2))
        toolbar1.items = [donebtn1]
        toolbar2.items = [donebtn2]
        txtStart.inputAccessoryView = toolbar1
        txtStart.inputView = timepicker
        
        txtEnd.inputAccessoryView = toolbar2
        txtEnd.inputView = timepicker
        
        timepicker.datePickerMode = .time
        timepicker.preferredDatePickerStyle = .wheels
    }
    @objc func doneclick1(){
        let format = DateFormatter()
        format.timeStyle = .short
        txtStart.text = format.string(from:timepicker.date)
        self.view.endEditing(false)
    }
    
    @objc func doneclick2(){
        let format = DateFormatter()
        format.timeStyle = .short
        txtEnd.text = format.string(from:timepicker.date)
        self.view.endEditing(false)
    }
    @IBAction func btn_Exit(_ sender: Any) {
        self.closePopup?.closeTap("", "")
    }
    
    @IBAction func btn_Success(_ sender: Any) {
        timeStart = txtStart.text!
        timeEnd = txtEnd.text!
        self.closePopup?.closeTap(timeStart, timeEnd)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

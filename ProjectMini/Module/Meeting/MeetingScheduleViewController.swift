//
//  MeetingScheduleViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/2/21.
//

import UIKit

class MeetingScheduleViewController: UIViewController {

    @IBOutlet weak var btnAll: UIButton!
    
    @IBOutlet weak var btnBook: UIButton!
    
    @IBOutlet weak var btnInvalid: UIButton!
    
    
    var button_isActive: Bool = false
    
    let color = UIColor(red: 245/255, green: 128/255, blue: 42/255, alpha: 0.25)
    
    @IBAction func btn_Button(_ sender: UIButton) {
        sender.backgroundColor = color
        if button_isActive {
            sender.backgroundColor = color
            ChangeColorButtonAll()
        } else {
            ChangeColorButtonAll()
        }
        button_isActive = !button_isActive
    }
    
    @IBAction func btn_Book(_ sender: UIButton) {
        sender.backgroundColor = color
        if button_isActive {
            sender.backgroundColor = color
            ChangeColorButtonBook()
        } else {
            ChangeColorButtonBook()
        }
        button_isActive = !button_isActive
    }
    
    @IBAction func btn_Invalid(_ sender: UIButton) {
        sender.backgroundColor = color
        if button_isActive {
            sender.backgroundColor = color
            ChangeColorButtonInvalid()
        } else {
            ChangeColorButtonInvalid()
        }
        button_isActive = !button_isActive
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
        
        ButtonRadiusMeeting()
    }
    
    func ButtonRadiusMeeting(){
        btnAll.backgroundColor = color
        btnAll.layer.cornerRadius = 5
        btnAll.layer.borderWidth = 1
        btnAll.layer.borderColor = #colorLiteral(red: 0.9060704112, green: 0.5060774088, blue: 0.2364054918, alpha: 1)
        btnBook.backgroundColor = .clear
        btnBook.layer.cornerRadius = 5
        btnBook.layer.borderWidth = 1
        btnBook.layer.borderColor = #colorLiteral(red: 0.9060704112, green: 0.5060774088, blue: 0.2364054918, alpha: 1)
        btnInvalid.backgroundColor = .clear
        btnInvalid.layer.cornerRadius = 5
        btnInvalid.layer.borderWidth = 1
        btnInvalid.layer.borderColor = #colorLiteral(red: 0.9060704112, green: 0.5060774088, blue: 0.2364054918, alpha: 1)
    }
    func ChangeColorButtonAll() {
        btnBook.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        btnInvalid.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    func ChangeColorButtonBook() {
        btnAll.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        btnInvalid.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    func ChangeColorButtonInvalid() {
        btnAll.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        btnBook.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

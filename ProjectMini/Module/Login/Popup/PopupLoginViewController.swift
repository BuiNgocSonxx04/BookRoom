//
//  PopupLoginViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/1/21.
//

import UIKit

protocol PopupLogin {
    func checkLogin()
}

class PopupLoginViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton! {
        didSet{
            btnBack.layer.cornerRadius = 8
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var checkpopup: PopupLogin?
    
    @IBAction func btn_Exit(_ sender: Any) {
        self.checkpopup?.checkLogin()
    }
    
    @IBAction func btn_Back(_ sender: Any) {
        self.checkpopup?.checkLogin()
    }
}

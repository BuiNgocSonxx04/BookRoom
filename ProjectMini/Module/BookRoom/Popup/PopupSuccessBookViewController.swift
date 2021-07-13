//
//  PopupSuccessBookViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/2/21.
//

import UIKit

protocol checkBookRoom {
    func checkRoom()
}

class PopupSuccessBookViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btnBack.layer.cornerRadius = 8
    }

    var checkPopup: checkBookRoom?
    
    @IBAction func btn_Exit(_ sender: Any) {
        self.checkPopup?.checkRoom()
    }
    
    @IBAction func btn_Back(_ sender: Any) {
        self.checkPopup?.checkRoom()
    }
}

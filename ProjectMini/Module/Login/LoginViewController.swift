//
//  LoginViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/1/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!{
        didSet{
            btnLogin.layer.cornerRadius = 8
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red  
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func btn_Login(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "ViewController")
//        controller.modalPresentationStyle = .fullScreen
//        self.present(controller, animated: true, completion: nil)
        let vc = MainTabBarViewController(nibName: "MainTabBarViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
//        if txtEmail.text == "a" && txtPassword.text == "1111" {
//
//
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let controller = storyboard.instantiateViewController(withIdentifier: "ViewController")
//            controller.modalPresentationStyle = .fullScreen
//            self.present(controller, animated: true, completion: nil)
//        } else {
//            var checklogin: PopupLoginViewController!
//            checklogin = PopupLoginViewController(nibName: "PopupLoginViewController", bundle: nil)
//            self.view.alpha = 1.0
//            checklogin.checkpopup = self
//            self.presentpopupViewController(popupViewController: checklogin, animationType: .BottomTop, completion: { () -> Void in
//
//            })
//        }
        
    }
    
}
extension LoginViewController: PopupLogin {
    func checkLogin() {
        self.dismissPopupViewController(animationType: SLpopupViewAnimationType.Fade)
    }
    
    
}

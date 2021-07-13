//
//  TabBarHomeViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/3/21.
//

import UIKit

class TabBarHomeViewController: UIViewController {

    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var viewTab: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        designable()
        self.forhome()
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { (timer) in
            self.forhome()
        }
    }
    
    func forhome() {
        guard let HomeViewController = self.storyboard?.instantiateViewController(identifier: "ViewController") else { return }
        contentView.addSubview(HomeViewController.view)
        HomeViewController.didMove(toParent: self)
    }
    
    func designable() {
        viewTab.layer.cornerRadius = viewTab.frame.size.height / 2
        viewTab.clipsToBounds = true
    }

    @IBAction func onClickTabBar(_ sender: UIButton) {
        let tag = sender.tag
        
        if tag == 1 {
            guard let HomeViewController = self.storyboard?.instantiateViewController(identifier: "ViewController") else { return }
            contentView.addSubview(HomeViewController.view)
            HomeViewController.didMove(toParent: self)
        }
        if tag == 2  {
            let MeetingViewController = MeetingScheduleViewController(nibName: "MeetingScheduleViewController", bundle: nil)
            self.navigationController?.pushViewController(MeetingViewController, animated: true)
            contentView.addSubview(MeetingViewController.view)
            MeetingViewController.didMove(toParent: self)
        } else {
            let userViewController = UserViewController(nibName: "UserViewController", bundle: nil)
            self.navigationController?.pushViewController(userViewController, animated: true)
            contentView.addSubview(userViewController.view)
            userViewController.didMove(toParent: self)
        }
    }
    
}

//
//  MainTabBarViewController.swift
//  ProjectMini
//
//  Created by Sơn on 7/3/21.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBar.barTintColor = UIColor(red: 245/255, green: 128/255, blue: 42/255, alpha: 0.25)
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homecontroller = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        homecontroller.tabBarItem.image = UIImage(named: "home")
        
        let meetingViewController = UINavigationController(rootViewController: MeetingScheduleViewController())
        meetingViewController.tabBarItem.image = UIImage(named: "date")
        
        let userViewController = UINavigationController(rootViewController: UserViewController())
        userViewController.tabBarItem.image = UIImage(named: "account")
        
        viewControllers = [homecontroller, meetingViewController, userViewController]
        }

}

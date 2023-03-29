//
//  ViewController.swift
//  TabBar
//
//  Created by Dastan on 28/3/23.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        view.backgroundColor = .red
        setupTabBarItems()
        setupTabBarAppearence()
    }
    
    private func setupTabBarItems() {
        setViewControllers([setupHomeVC(), setupSettingsVC(), setupAddVC(), setupUsersVC(), setupAnalyticsVC()], animated: false)
        selectedIndex = 0
    }
    
    private func setupTabBarAppearence() {
        self.tabBar.isTranslucent = true
        self.tabBar.backgroundColor = .white
    }
    
    private func setupHomeVC() -> UIViewController {
        let vc = HomeVC()
        vc.title = "Главная"
        vc.tabBarItem.image = UIImage(named: "HomeU")
        return vc
    }
    
    private func setupSettingsVC() -> UIViewController {
        let vc = SettingsVC()
        vc.title = "Настройки"
        vc.tabBarItem.image = UIImage(named: "SettingsU")
        return vc
    }
    
    private func setupAddVC() -> UIViewController {
        let vc = AddVC()
        vc.tabBarItem.image = UIImage(named: "Add")
        return vc
    }
    
    private func setupUsersVC() -> UIViewController {
        let vc = UsersVC()
        vc.title = "Пользователи"
        vc.tabBarItem.image = UIImage(named: "UsersU")
        return vc
    }

    private func setupAnalyticsVC() -> UIViewController {
        let vc = AnalyticsVC()
        vc.title = "Аналитика"
        vc.tabBarItem.badgeValue = "1"
        vc.tabBarItem.badgeColor = .systemYellow
        vc.tabBarItem.image = UIImage(named: "AnalyticU")
        return vc
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        switch viewController {
        case is HomeVC:
            viewController.tabBarItem.image = UIImage(named: "HomeT")
        case is SettingsVC:
            viewController.tabBarItem.image = UIImage(named: "SettingsT")
        case is AddVC:
            viewController.tabBarItem.image = UIImage(named: "Add")
        case is UsersVC:
            viewController.tabBarItem.image = UIImage(named: "UsersT")
        case is AnalyticsVC:
            viewController.tabBarItem.image = UIImage(named: "AnalyticT")
        default:
            break
        }
    }
}

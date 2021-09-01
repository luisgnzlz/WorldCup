//
//  BottomMenuViewController.swift
//  tester
//
//  Created by Luis Gonzalez on 8/25/21.
//

import UIKit

class BottomMenuViewController: UITabBarController {
    var top = TopMenu()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //constrain()
        setupVCs()
    }

    func constrain() {
        view.addConstrainedSubviews(top)
        top.topMenu.addTarget(self, action: #selector(menuPopUp), for: .touchUpInside)
        NSLayoutConstraint.activate([
                                        
            top.topAnchor.constraint(equalTo: view.topAnchor),
            top.heightAnchor.constraint(equalToConstant: 80),
            top.widthAnchor.constraint(equalTo: view.widthAnchor),
           
        ])
    }
    
    func setupVCs() {
            viewControllers = [
                createNavController(for: CountriesViewController(), title: "Scores", image: UIImage(systemName: "sportscourt.fill")!),
                createNavController(for: TeamGroupInfoViewController(), title: "Group Info", image: UIImage(systemName: "chart.bar.fill")!),
                createNavController(for: NewsViewController(), title: "News", image: UIImage(systemName: "newspaper.fill")!)
            ]
        UINavigationBar.appearance().prefersLargeTitles = true
        }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                      title: String,
                                                      image: UIImage) -> UINavigationController {
        if title == "Scores" {
            rootViewController.navigationItem.title = "World Cup \(title)"
        } else {
        rootViewController.navigationItem.title = title
        }
            let navController = UINavigationController(rootViewController: rootViewController)
            navController.tabBarItem.title = title
            navController.tabBarItem.image = image
            return navController
        }
    
    @objc func menuPopUp() {
        present(CountriesViewController(), animated: true, completion: nil)
    }

}

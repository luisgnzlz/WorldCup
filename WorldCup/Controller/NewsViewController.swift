//
//  UserInfoViewController.swift
//  tester
//
//  Created by Luis Gonzalez on 8/26/21.
//

import UIKit

class NewsViewController: UIViewController {
    
    let userInfo = NewsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        constrain()
    }
    
    func configure() {
        
    }
    
    func constrain() {
        view.addConstrainedSubviews(userInfo)
        
        NSLayoutConstraint.activate([
            
            userInfo.topAnchor.constraint(equalTo: view.topAnchor),
            userInfo.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            userInfo.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }

}

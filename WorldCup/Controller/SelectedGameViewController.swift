//
//  SelectedGameViewController.swift
//  tester
//
//  Created by Luis Gonzalez on 8/26/21.
//

import UIKit

class SelectedGameViewController: UIViewController {
    let overallScore = ScoreInfoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.9)
        setUpInfo()
    }
    
    func setUpInfo() {
        view.addConstrainedSubviews(overallScore)
        
        NSLayoutConstraint.activate([
            overallScore.topAnchor.constraint(equalTo: view.topAnchor),
            overallScore.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            overallScore.leftAnchor.constraint(equalTo: view.leftAnchor),
            overallScore.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
        
    }
    
}

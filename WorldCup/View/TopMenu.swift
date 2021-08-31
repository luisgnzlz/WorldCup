//
//  TopMenu.swift
//  tester
//
//  Created by Luis Gonzalez on 8/23/21.
//

import UIKit

class TopMenu: ProgammaticView {
    
    let topMenu = UIButton()
    let title = UILabel()
    
    override func configure() {
        backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        title.text = "World Cup-2020"
        title.font = UIFont(name: "Rockwell-Bold", size: 30)
        title.textColor = .white
        title.textAlignment = .center
        //title.backgroundColor = .green
        
        topMenu.setImage(UIImage(systemName: "square.grid.3x2.fill"), for: .normal)
        topMenu.tintColor = .white
        
    }
    
    override func constrain() {
        addConstrainedSubviews(topMenu, title)
        
        NSLayoutConstraint.activate([
            topMenu.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topMenu.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            title.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            title.heightAnchor.constraint(equalToConstant: 35),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
    }

}

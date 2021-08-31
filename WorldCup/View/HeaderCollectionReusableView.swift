//
//  HeaderCollectionReusableView.swift
//  tester
//
//  Created by Luis Gonzalez on 8/24/21.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    static let identifier = "HeaderCollectionReusableView"
    
    let headerLabel = UILabel()
    let underLine = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        constrain()
    }
    
    func configure() {
        headerLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        headerLabel.layer.cornerRadius = 2
        headerLabel.layer.masksToBounds = true
        //headerLabel.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        headerLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
        underLine.backgroundColor = .black
    }
    
    func constrain() {
        addConstrainedSubviews(headerLabel, underLine)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor),
            headerLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            underLine.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 2),
            underLine.heightAnchor.constraint(equalToConstant: 1),
            underLine.widthAnchor.constraint(equalTo: headerLabel.widthAnchor),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}


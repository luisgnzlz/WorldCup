//
//  CountryFlagsCollectionViewCell.swift
//  tester
//
//  Created by Luis Gonzalez on 8/24/21.
//

import UIKit

class CountryFlagsCollectionViewCell: UICollectionViewCell {
    
    let flagPic = UIImageView()
    let countryNameLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        constrain()
    }
    
    func configure() {
        flagPic.contentMode = .scaleAspectFit
        
        countryNameLabel.text = "Country Name"
        countryNameLabel.textAlignment = .center
        countryNameLabel.font = UIFont(name: "GeezaPro-Bold", size: 14)
        countryNameLabel.textColor = .black
    }
    
    func constrain() {
        addConstrainedSubviews(flagPic, countryNameLabel)
        
        NSLayoutConstraint.activate([
            flagPic.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            flagPic.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            countryNameLabel.topAnchor.constraint(equalTo: flagPic.bottomAnchor, constant: 20),
            countryNameLabel.leftAnchor.constraint(equalTo: flagPic.leftAnchor),
            countryNameLabel.rightAnchor.constraint(equalTo: flagPic.rightAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


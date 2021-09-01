//
//  CountryFlagsCollectionViewCell.swift
//  tester
//
//  Created by Luis Gonzalez on 8/24/21.
//

import UIKit

class CountryFlagsCollectionViewCell: UICollectionViewCell {
    
    let flagPic1 = UIImageView()
    let flagPic2 = UIImageView()
    let countryNameLabel1 = UILabel()
    let countryNameLabel2 = UILabel()
    let vs = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        constrain()
    }
    
    func configure() {
        flagPic1.contentMode = .scaleAspectFit
        
        flagPic2.contentMode = .scaleAspectFit
        
        vs.text = "vs"
        vs.textAlignment = .center
        vs.font = UIFont(name: "GeezaPro-Bold", size: 20)
        vs.textColor = .black
        
        countryNameLabel1.text = "Country Name"
        countryNameLabel1.textAlignment = .center
        countryNameLabel1.font = UIFont(name: "GeezaPro-Bold", size: 14)
        countryNameLabel1.textColor = .black
        
        countryNameLabel2.text = "Country Name"
        countryNameLabel2.textAlignment = .center
        countryNameLabel2.font = UIFont(name: "GeezaPro-Bold", size: 14)
        countryNameLabel2.textColor = .black
    }
    
    func constrain() {
        addConstrainedSubviews(flagPic1, vs, flagPic2, countryNameLabel1, countryNameLabel2)
        
        NSLayoutConstraint.activate([
            flagPic1.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            flagPic1.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -50),
            
            vs.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            vs.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            flagPic2.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            flagPic2.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 50),
            
            countryNameLabel1.topAnchor.constraint(equalTo: flagPic1.bottomAnchor, constant: 20),
            countryNameLabel1.leftAnchor.constraint(equalTo: flagPic1.leftAnchor),
            countryNameLabel1.rightAnchor.constraint(equalTo: flagPic1.rightAnchor),
            
            countryNameLabel2.topAnchor.constraint(equalTo: flagPic2.bottomAnchor, constant: 20),
            countryNameLabel2.leftAnchor.constraint(equalTo: flagPic2.leftAnchor),
            countryNameLabel2.rightAnchor.constraint(equalTo: flagPic2.rightAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


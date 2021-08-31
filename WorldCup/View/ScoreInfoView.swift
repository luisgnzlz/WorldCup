//
//  ScoreInfoView.swift
//  tester
//
//  Created by Luis Gonzalez on 8/26/21.
//

import UIKit

class ScoreInfoView: ProgammaticView {
    
    var imageFlag1 = UIImageView()
    var imageFlag2 = UIImageView()
    var scoreTeam1 = UILabel()
    var scoreTeam2 = UILabel()
    var gameInfo = UILabel()
    var shareButton = UIButton()
    
    
    override func configure() {
        gameInfo.text = "Game Info"
        gameInfo.textColor = .black
        gameInfo.font = UIFont(name: "AvenirNext-Heavy", size: 30)
        gameInfo.textAlignment = .center
        
        scoreTeam1.font = UIFont(name: "AvenirNext-Heavy", size: 20)
        scoreTeam1.textAlignment = .center
        scoreTeam1.text = "1"
        
        scoreTeam2.font = UIFont(name: "AvenirNext-Heavy", size: 20)
        scoreTeam2.textAlignment = .center
        scoreTeam2.text = "2"
        
        imageFlag1.contentMode = .scaleAspectFit
        imageFlag2.contentMode = .scaleAspectFit
    }
    
    override func constrain() {
        addConstrainedSubviews(gameInfo, imageFlag1, scoreTeam1, imageFlag2, scoreTeam2)
        
        NSLayoutConstraint.activate([
            
            gameInfo.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            gameInfo.centerXAnchor.constraint(equalTo: centerXAnchor),
            gameInfo.heightAnchor.constraint(equalToConstant: 35),
            
            imageFlag1.topAnchor.constraint(equalTo: gameInfo.bottomAnchor, constant: 50),
            imageFlag1.rightAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            imageFlag1.widthAnchor.constraint(equalToConstant: 100),
            imageFlag1.heightAnchor.constraint(equalToConstant: 100),
            
            scoreTeam1.topAnchor.constraint(equalTo: imageFlag1.bottomAnchor, constant: 5),
            scoreTeam1.widthAnchor.constraint(equalTo: imageFlag1.widthAnchor),
            scoreTeam1.rightAnchor.constraint(equalTo: imageFlag1.rightAnchor),
            
            scoreTeam2.topAnchor.constraint(equalTo: imageFlag2.bottomAnchor, constant: 5),
            scoreTeam2.widthAnchor.constraint(equalTo: imageFlag2.widthAnchor),
            scoreTeam2.leftAnchor.constraint(equalTo: imageFlag2.leftAnchor),
            
            imageFlag2.topAnchor.constraint(equalTo: gameInfo.bottomAnchor, constant: 50),
            imageFlag2.leftAnchor.constraint(equalTo: imageFlag1.rightAnchor, constant: 40),
            imageFlag2.widthAnchor.constraint(equalToConstant: 100),
            imageFlag2.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}

//
//  CountriesViewController.swift
//  tester
//
//  Created by Luis Gonzalez on 8/23/21.
//

import UIKit

class CountriesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let gameInfo = SelectedGameViewController()
    let layoutProducts = UICollectionViewFlowLayout()
    var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
    let logoImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setUpView()
    }
    
    func setUpView() {

        layoutProducts.itemSize = CGSize(width: (view.frame.width-22)/2, height: view.frame.height/5)
        layoutProducts.minimumLineSpacing = 1
        layoutProducts.minimumInteritemSpacing = 1
        
        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: layoutProducts)
        self.collectionView.isScrollEnabled = true
        self.collectionView.backgroundColor = .clear
        self.collectionView.register(CountryFlagsCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        self.collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        view.addConstrainedSubviews(collectionView)

        NSLayoutConstraint.activate([
  
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            collectionView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            collectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                          
            ])
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 7
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CountryFlagsCollectionViewCell
        
        //collectionCell.backgroundColor = .green
            collectionCell.flagPic.image = UIImage(named: "\(countryNames[indexPath.row])")
            //collectionCell.itemInfo.text = "\(topSellerList[indexPath.row])"
        
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        
        header.configure()
        
        
            header.headerLabel.text = "  Group \(group[indexPath.section])"
        
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: (view.frame.width)/2, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionView.cellForItem(at: indexPath) as! CountryFlagsCollectionViewCell
        gameInfo.overallScore.imageFlag1.image = selectedCell.flagPic.image
        gameInfo.overallScore.imageFlag2.image = selectedCell.flagPic.image
        present(gameInfo, animated: true, completion: nil)
    }

}


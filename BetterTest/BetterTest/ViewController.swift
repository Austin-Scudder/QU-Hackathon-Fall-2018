//
//  ViewController.swift
//  BetterTest
//
//  Created by Austin Scudder on 11/3/18.
//  Copyright © 2018 Austin Scudder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet var collectionView: UICollectionView!
    var columnLayout = FlowLayout(
        cellsPerRow: 2,
        minimumInteritemSpacing: 10,
        minimumLineSpacing: 10,
        sectionInset: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    )
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! NewsItemCollectionViewCell
        cell.newsCaption.text
            = "Matthew"
        cell.backgroundColor = .black
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.collectionViewLayout = columnLayout
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }


}


//
//  ViewController.swift
//  BetterTest
//
//  Created by Austin Scudder on 11/3/18.
//  Copyright © 2018 Austin Scudder. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    @IBOutlet var newsDesc: UITextView!
    @IBOutlet var newsTitle: UILabel!
    @IBOutlet var newsImage: UIImageView!
    @IBOutlet var collectionView: UICollectionView!
    let newsData = NewsStoriesHandler()
    var columnLayout = FlowLayout(
        cellsPerRow: 2,
        minimumInteritemSpacing: 10,
        minimumLineSpacing: 10,
        sectionInset: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    )
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    @IBAction func firstNewsStory(_ sender: Any) {let URL = newsData.getNewsURL(0)
        let config = SFSafariViewController.Configuration()
        let vc = SFSafariViewController(url: URL, configuration: config)
        present(vc, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! NewsItemCollectionViewCell
        cell.newsCaption.text = newsData.getNewsTitle(indexPath.row + 1)
        cell.newsPreview.text = newsData.getNewsDescription(indexPath.row + 1)
        cell.newsImage.image = newsData.getNewsImage(indexPath.row + 1)
        cell.newsPreview.setContentOffset(.zero, animated: false)
        
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let URL = newsData.getNewsURL(indexPath.row + 1)
        let config = SFSafariViewController.Configuration()
        let vc = SFSafariViewController(url: URL, configuration: config)
        present(vc, animated: true)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.collectionViewLayout = columnLayout
        collectionView.delegate = self
        collectionView.dataSource = self
        newsImage.image = newsData.getNewsImage(0)
        newsTitle.text = newsData.getNewsTitle(0)
        newsDesc.text = newsData.getNewsDescription(0)
        
    }


}


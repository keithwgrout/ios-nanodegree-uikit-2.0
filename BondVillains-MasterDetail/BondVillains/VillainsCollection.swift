//
//  VillainsCollection.swift
//  BondVillains
//
//  Created by KEITH GROUT on 3/17/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit

class VillainsCollection: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let villains = Villain.allVillains
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let villain = villains[indexPath.row]
        let villainImage = UIImage(named: villain.imageName)
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collCell", forIndexPath: indexPath) as! CollectionViewCell
        cell.cellLabel.text = villain.name
//        cell.imageView.image = villainImage!
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return villains.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //
    }
    
}

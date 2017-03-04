//
//  ViewController.swift
//  imageGrid
//
//  Created by Slawek Kurczewski on 04.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
                        "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
                        "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
                        "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
                        "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
                        "donostia.jpg", "royaloak.jpg"]


class ViewController: UIViewController, UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    
    var imageCounter=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as! MyImageCell
        cell.backgroundColor=UIColor.black
        var currImage : String = ""
        currImage=restaurantImages[self.imageCounter]
        self.imageCounter+=1
        if self.imageCounter>=restaurantImages.count
        {
            self.imageCounter=0
        }
        cell.image.image=UIImage(named: currImage)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 120
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: 90)
    }


}


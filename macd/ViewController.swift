//
//  ViewController.swift
//  macd
//
//  Created by R & W on 14/03/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    
    var arr = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5")]
    var labelName = ["big tasty with bacon","big tasty","cadbury caramel mvflurry","cadbur creme","franch fries"]
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.layer.borderWidth = 2
        label1.layer.borderColor = UIColor.black.cgColor
        
       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.img.image = arr[indexPath.row]
        cell.label.text = "\(labelName[indexPath.row])"
        cell.layer.borderWidth = 2
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 170)
    }
    
}


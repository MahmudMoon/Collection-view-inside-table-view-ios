//
//  MyTableViewCell.swift
//  CollectionInsideTable
//
//  Created by BJIT on 13/1/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    static let identifier = "table_row"
    @IBOutlet var collectionView: UICollectionView!
    var carAry: [Car] = [Car]()
    
    public static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func configureTableCell(with ary: [Car]){
        carAry = ary
    }
    
}


extension MyTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carAry.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.configureCollectionCell(with: carAry[indexPath.row])
        return cell
    }
}

extension MyTableViewCell: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("item selected from collection")
    }
}

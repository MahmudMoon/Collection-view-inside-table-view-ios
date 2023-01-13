//
//  CollectionViewCell.swift
//  CollectionInsideTable
//
//  Created by BJIT on 13/1/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    static let identifier = "collection_item"
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    public static func nib() -> UINib{
        return UINib(nibName: "CollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCollectionCell(with car: Car){
        imageView.image = car.image
        label.text = car.name
    }

}

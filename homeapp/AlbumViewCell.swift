//
//  AlbumViewCell.swift
//  homeapp
//
//  Created by Antonio Silvestri on 27/09/18.
//  Copyright © 2018 iOSFoundation. All rights reserved.
//

import UIKit

class AlbumViewCell: UITableViewCell {

    @IBOutlet var CityLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        CityLabel.layer.cornerRadius = 8.0
    }
    
    override func  setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

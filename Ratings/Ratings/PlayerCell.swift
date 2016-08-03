//
//  PlayerCell.swift
//  Ratings
//
//  Created by student on 8/3/16.
//  Copyright © 2016 prashannaraghavan. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    func imageForRating(rating:Int) -> UIImage?
    {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }
    
    var player : Player!{
        didSet{
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = imageForRating(player.rating)
        }
    }
}

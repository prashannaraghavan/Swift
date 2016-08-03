//
//  Player.swift
//  Ratings
//
//  Created by student on 8/2/16.
//  Copyright © 2016 prashannaraghavan. All rights reserved.
//

import UIKit

struct Player{
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?,game: String?,rating: Int)
    {
        self.name = name;
        self.game = game;
        self.rating = rating;
    }
}

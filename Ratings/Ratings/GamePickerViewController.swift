//
//  GamePickerViewController.swift
//  Ratings
//
//  Created by student on 8/3/16.
//  Copyright © 2016 prashannaraghavan. All rights reserved.
//

import UIKit


class GamePickerViewController: UITableViewController {
    
    var selectedGame:String?{
        didSet{
            if let game = selectedGame{
                selectedGameIndex = games.indexOf(game)
            }
        }
    }
    
    var selectedGameIndex : Int?
    
    
    var games:[String] = [
    "Angry Birds",
    "Chess",
    "Russin Roulette",
    "Spin the Bottle",
    "Texas Hold'em Poker",
    "Tic-Tac-Toe"
    ]

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("GameCell", forIndexPath: indexPath)
        cell.textLabel?.text = games[indexPath.row]
        if indexPath.row == selectedGameIndex{
            cell.accessoryType = .Checkmark
        }
        else{
            cell.accessoryType = .None
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if let index = selectedGameIndex{
            let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: index, inSection: 0))
            cell?.accessoryType = .None
        }
        
        selectedGame = games[indexPath.row]
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        cell?.accessoryType = .Checkmark
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveSelectedGame"{
            if let cell = sender as? UITableViewCell{
                let indexPath = tableView.indexPathForCell(cell)
                if let index = indexPath?.row{
                    selectedGame = games[index]
                }
            }
        }
        
    }
}

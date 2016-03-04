//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by KEITH GROUT on 3/3/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var history = [RPSMatch]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCellWithIdentifier("HistoryCell"))!
        
        let match = history[indexPath.row]
        var victoryMessage = ""
        
        let outcome = match.p1.description + " vs " + match.p2.description
        
        if match.winner == match.p1 && (match.p1.description != match.p2.description) {
            victoryMessage = "You Won!"
        } else if (match.winner == match.p2) && (match.p1.description != match.p2.description) {
            victoryMessage = "You Lose."
        } else {
            victoryMessage = "Tie!"
        }
        
        cell.textLabel?.text = victoryMessage
        cell.detailTextLabel?.text = outcome
        return cell
    }
}

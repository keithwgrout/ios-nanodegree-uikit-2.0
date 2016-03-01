//
//  ViewController.swift
//  DoReMi
//
//  Created by Jason Schatz on 11/18/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {

    // Use this string property as your reuse identifier, 
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "007"
    
    // Choose some data to show in your table
    
    let model = [
        // TODO: Fill this array with data
        "Do",
        "Re",
        "Mi"
    ]
    
    // Add the two essential table data source methods here
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: Implement method to return the correct number of rows.
        return model.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //TODO: Implement method to return cell with the correct reuseidentifier and populated with the correct data.
        
        /*
        // TODO: Implement method
        // 1. Dequeue a reusable cell from the table, using the correct “reuse identifier”
        // 2. Find the model object that corresponds to that row
        // 3. Set the images and labels in the cell with the data from the model object
        // 4. return the cell.
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FavoriteThingCell")
        cell!.textLabel!.text = favoriteThings[indexPath.row]
        return cell!
        */
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseIdentifier)!
        cell.textLabel?.text = model[indexPath.row]
        return cell
        
    }

}


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
        ["text" : "Do", "detail" : "A deer. A female deer."],
        ["text" : "Re", "detail" : "A drop of golden sun."],
        ["text" : "Mi", "detail" : "A name, I call myself."],
        ["text" : "Fa", "detail" : "A long long way to run."],
        ["text" : "So", "detail" : "A needle pulling thread."],
        ["text" : "La", "detail" : "A note to follow So."],
        ["text" : "Ti", "detail" : "A drink with jam and bread."]
    ]
    
    // Add the two essential table data source methods here
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: Implement method to return the correct number of rows.
        return model.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        /*
        // TODO: Implement method
        // 1. Dequeue a reusable cell from the table, using the correct “reuse identifier”
        // 2. Find the model object that corresponds to that row
        // 3. Set the images and labels in the cell with the data from the model object
        // 4. return the cell.
        */
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseIdentifier)!
        let object = model[indexPath.row]
        cell.textLabel?.text = object["text"]
        cell.detailTextLabel?.text = object["detail"]
        return cell
        
    }

}


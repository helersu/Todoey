//
//  ViewController.swift
//  Todoey
//
//  Created by cybersoft on 11/01/2018.
//  Copyright © 2018 cybersoft. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
 
    
    let itemArray = ["Shop","Market","Music Theory"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

    }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
        
        
    }
    
    //MARK - Click the cell Delegate and Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if (tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark)
        {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
 
}


//
//  ViewController.swift
//  Todoey
//
//  Created by Pavel on 02/07/2019.
//  Copyright © 2019 Pavel. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Ask a cell of the appropriae type
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        // configure the cell's contents with the row and section number
        // The Basic cell style guarantees a label view is present in textLabel
        
        cell.textLabel!.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print (itemArray[indexPath.row])
        
        
       
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
       
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}



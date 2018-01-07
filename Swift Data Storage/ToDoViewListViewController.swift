//
//  ViewController.swift
//  Swift Data Storage
//
//  Created by Ganesh Balaji Pawar on 07/01/18.
//  Copyright © 2018 Ganesh Balaji Pawar. All rights reserved.
//

import UIKit

class ToDoViewListViewController: UITableViewController {

    let array = ["A","B","C","D"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK - Tablew view datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row];
        
        return cell;
    }
    
    //MARK - TablewView delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(array[indexPath.row]);
        
        if tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark{
           tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }else{
           tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        
        tableView.deselectRow(at: indexPath, animated: true);
    }
    
}


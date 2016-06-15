//
//  FirstViewController.swift
//  TodoApp
//
//  Created by Jonny Pickard on 15/06/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTodos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Returning to view
    override func viewWillAppear(_ animated: Bool) {
        tblTodos.reloadData();
    }
    
    // UITableViewDelete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.delete) {
            todoMgr.todos.remove(at: indexPath.row)
            tblTodos.reloadData();
        }
    }
    
    
    // UITableViewDataSource
    // Create rows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoMgr.todos.count // Take number of rows in table from todoMgr.todos.count
    }
    
    // Create cells that go inside of table
    // Gets called based on return value from create rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = todoMgr.todos[indexPath.row].name // name
        cell.detailTextLabel?.text = todoMgr.todos[indexPath.row].desc // description
        
        return cell
        
    }
    
}


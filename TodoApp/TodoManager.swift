//
//  TodoManager.swift
//  TodoApp
//
//  Created by Jonny Pickard on 15/06/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import UIKit

var todoMgr: TodoManager = TodoManager()

struct todo {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TodoManager: NSObject {
    
    var todos = [todo]()
    
    func addTodo(name: String, desc: String) {
        todos.append(todo(name: name, desc: desc))
    }
}

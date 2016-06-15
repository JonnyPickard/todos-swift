//
//  SecondViewController.swift
//  TodoApp
//
//  Created by Jonny Pickard on 15/06/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTodo: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTodo_Click(sender: UIButton) {
        // add the todo to the class
        todoMgr.addTodo(name: txtTodo.text!, desc: txtDesc.text!)
        
        // get rid of keyboard if its open
        self.view.endEditing(true)
        
        // clear out text boxes
        txtTodo.text = ""
        txtDesc.text = ""
        
        // change page to index page so user can see new item
        self.tabBarController?.selectedIndex = 0;
    }
    
    // IOS Touch Functions
    // Keyboard dissapears when you tap away
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //UITextField Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }

    
}


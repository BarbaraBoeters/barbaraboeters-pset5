//
//  AddItemViewController.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 02-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet weak var itemField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dismissAndSave" {
            let task = TodoList(name: itemField.text!)
//            ToDoManager.sharedInstance.toDoLists.append(TodoList(name: itemField.text!))
            ToDoManager.sharedInstance.toDoLists.append(task)
            // TodoList.addNewToDoItem(task)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  DetailViewController.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 28-11-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    private var selectedTodo: Int?

    var items = [TodoList]()

    // private let db = DatabaseHelper()

    func configureView() {
        // Update the user interface for the detail item.
//        items = TodoList(name: name)
//        if let detail: TodoList = self.detailItem {
//            if let label = self.label {
//                cell.label.text = detail.name
//            }
//        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // print(items.count)
        return items.count
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        selectedTodo = indexPath.row
    }

    var detailItem: TodoList? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        var label: UILabel?
        label = cell.viewWithTag(1) as? UILabel
        cell.label?.text = items[indexPath.row].name
        return cell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
//        let task = ToDoManager.sharedInstance.readList(index: indexPath.row)
//        cell.textLabel?.text = task.name
//        // cell.detailTextLabel?.text = taskDetail.name
//        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            selectedTodo = indexPath.row
//            try db!.deleteItem(cid: items[selectedTodo!].id!)
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetail" {
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let task = ToDoManager.sharedInstance.readList(index: indexPath.row)
//                print(task)
//                //(segue.destination as! DetailViewController).detailItem = task
//                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
//                controller.detailItem = task
//            }
//        }
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showItem" {
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let task = ToDoManager.sharedInstance.readItem(name: )
//                print(task)
//            }
//        }
//    }
}




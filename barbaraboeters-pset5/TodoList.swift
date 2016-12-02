//
//  TodoList.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 02-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import Foundation

class TodoList {
    let id: Int64?
    let name: String
    var todoItems = Array<TodoItem>()
    
    init(name: String) {
        self.id = nil
        self.name = name
    }
    
    func addNewToDoItem(item: String) {
        let newToDoItem = TodoItem(name: item)
        todoItems.append(newToDoItem)
    }
    
    func readItems() -> String {
        return self.name
    }
    
    func deleteToDoItem(index: Int) {
        todoItems.remove(at: index)
    }
    
//    func readItems() -> [TodoList] {
//        
//    }
    
    var count: Int {
        return todoItems.count
    }
}

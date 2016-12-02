//
//  TodoManager.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 02-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import Foundation

class ToDoManager {
    
    var toDoLists = Array<TodoList>()
    
    private let db = DatabaseHelper()
    // connection zit in je DatabaseHelper)
    
    class var sharedInstance: ToDoManager {
        struct Static {
            static let instance = ToDoManager()
        }
        return Static.instance
    }
    
    private init() {}
    
    func createList(list: String) {
        let newList = TodoList(name: list)
        toDoLists.append(newList)
    }
    
    func readList(index: Int) -> TodoList {
        return toDoLists[index]
    }
    
//    func readItem(name: String) -> TodoList {
//        return toDoLists[name]
//    }

    
    var count: Int {
        return toDoLists.count
    }
    
    func deleteList(index: Int) {
        toDoLists.remove(at: index)
    }
    
}


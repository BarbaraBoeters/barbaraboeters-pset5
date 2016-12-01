//
//  TaskStore.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 01-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//
// TODOMANAGER

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance
    }
    
    var tasks: [Task] = []
    
    var count: Int {
        return tasks.count
    }
    
    func add (task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }
    
    func removeTaskAtIndex(index: Int) {
        tasks.remove(at: index)
    }
}


//// A singleton class that groups some common functionality. It contains the list of TodoLists for your application, and it has two functions that are responsible for persistence of the lists between application runs: readTodos and writeTodos.
//
//import Foundation
//
//class TodoManager {
//
//    static let sharedInstance = TodoManager()
//    private let db = DatabaseHelper()
//
//    // This prevents others from using the default '()' initializer for this class.
//    private init() {}
//
//    // readTodos: haal de lijsten op
////    private func getList() -> [TodoList] {
////        do {
////            for list in try db!.prepare(self.list) {
////                items.append(List(id: list[id], item: list[item]!, check: list[check]))
////            }
////        } catch {
////            print("Select failed")
////        }
////        return items
////    }
//
//    // writeTodos: maak een nieuwe lijst aan
////    func addList() {
////        do {
////            //
////        } catch {
////            throw error
////        }
////    }
//}

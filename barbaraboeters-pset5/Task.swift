//
//  Task.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 01-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//
// TODOITEM


import Foundation

struct Task {
    let title: String
    let notes: String
    
    init(title: String, notes: String) {
        self.title = title
        self.notes = notes
    }
}
//class Task {
//    let id: Int64?
//    let listId: Int64?
//    let title: String
//    let notes: String
//
//    init(id:Int64, listId:Int64) {
//        self.id = id
//        self.listId = listId
//        title = ""
//        notes = ""
//    }
//
//    init(id:Int64, listId:Int64, title:String, notes:String) {
//        self.id = id
//        self.listId = listId
//        self.title = title
//        self.notes = notes
//    }
//}

// Stores data for a single todo list. That means that each instance of this class contains many TodoItems! The class variables (such as title) should not be public, but private. Where needed, you can expose the variables through getters and setters.

//import Foundation
//
//class TodoItem {
//    let id: Int64?
//    let listId: Int64?
//    var item: String
//    let completed: Bool
//
//    init(id:Int64, listId:Int64) {
//        self.id = id
//        self.listId = listId
//        item = ""
//        self.completed = false
//    }
//
//    init(id:Int64, listId:Int64, item:String, completed:Bool) {
//        self.id = id
//        self.listId = listId
//        self.item = item
//        self.completed = completed
//    }
//}

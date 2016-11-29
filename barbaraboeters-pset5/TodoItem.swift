//
//  TodoItem.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 28-11-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import Foundation

class TodoItem {
    let id: Int64?
    let listId: Int64?
    var item: String
    let completed: Bool
    
    init(id:Int64, listId:Int64) {
        self.id = id
        self.listId = listId
        item = ""
        self.completed = false
    }
    
    init(id:Int64, listId:Int64, item:String, completed:Bool) {
        self.id = id
        self.listId = listId
        self.item = item
        self.completed = completed
    }
}

//
//  TodoItem.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 02-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import Foundation

class TodoItem {
    let id: Int64!
    let listId: Int64!
    let name: String
    var completed = false
    
    init(name: String) {
        id = nil
        listId = nil
        self.name = name
    }
    
    func completedToDoItem(name: String, newCheck: Bool) {
        // update completed naar true
    }
}

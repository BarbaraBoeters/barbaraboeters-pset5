//
//  DatabaseHelper.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 29-11-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

//import Foundation
//import SQLite

//class DatabaseHelper {
//    static let instance = DatabaseHelper()
//    private var db: Connection?
//    
//    private let list = Table("list")
//    // private let id = Expression<Int64>("id")
//    // private let listId = Expression<Int64>("listId")
//    private let title = Expression<String?>("title")
//    private let notes = Expression<String?>("notes")
//    // private let completed = Expression<Bool>("completed")
//    
//    init?() {
//        do {
//            try setupDatabase()
//        } catch {
//            print(error)
//            return nil
//        }
//    }
//    
//    private func setupDatabase() throws {
//        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
//        do {
//            // db = try Connection("\(path)/db.sqlite3")
//            db = try Connection("\(path)/db.sqlite3")
//            
//            try createTable()
//        } catch {
//            throw error
//        }
//    }
//    
//    private func createTable() throws {
//        do {
//            try db!.run(list.create(ifNotExists: true) {
//                t in
//                // t.column(id, primaryKey: .autoincrement)
//                // t.column(listId)
//                t.column(title)
//                t.column(notes)
//                // t.column(completed)
//            })
//        } catch {
//            throw error
//        }
//    }
//    
//    func getList() -> [Task] {
//        var items = [Task]()
//        do {
//            for list in try db!.prepare(self.list) {
//                items.append(Task(id: list[id], listId: list[listId], title: list[title]!, notes: list[notes]))
//            }
////                items.append(Task(id: task[id], listId: task[listId], title: task[title]!, notes: task[notes]))
//        } catch {
//            print("Select failed")
//        }
//        return items
//    }
    
//    func addItem(ctitle: String) throws -> Int64? {
//        do {
//            let insert = list.insert(title <- citem, notes < cnotes)
//            let id = try db!.run(insert)
//            // print(id)
//            // print(insert.asSQL())
//            return id
//        } catch {
//            throw error
//        }
//    }
    
//    func deleteItem(cid: Int64) -> Bool {
//        do {
//            let thing = list.filter(id == cid)
//            try db!.run(thing.delete())
//            return true
//        } catch {
//            print("Delete failed")
//        }
//        return false
//    }
    
//    func updateItem(name: String, newCheck: Bool) {
//        do {
//            let itemTemp = list.filter(item == name)
//            try db!.run(itemTemp.update(completed <- newCheck))
//        } catch {
//            print("update failed")
//        }
//    }


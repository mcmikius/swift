//
//  TodoList.swift
//  ToDoWithNotification
//
//  Created by Mykhailo Bondarenko on 16.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import Foundation
import UIKit

class TodoList {
    class var sharedInstance : TodoList {
        struct Static {
            static let instance: TodoList = TodoList()
        }
        return Static.instance
    }
    
    fileprivate let ITEMS_KEY = "todoItems"
    
    func addItem(_ item: TodoItem) {
        var todoDictionary = UserDefaults.standard.dictionary(forKey: ITEMS_KEY) ?? Dictionary()
        todoDictionary[item.UUID] = ["deadline": item.deadline, "title": item.title, "UUID": item.UUID]
        UserDefaults.standard.set(todoDictionary, forKey: ITEMS_KEY)
        
        let content = UNMutableNotificationContent()
        content.title = "TodoList"
        content.body = "Todo Item \"\(item.title)\" Is Overdue"
        content.userInfo = ["title": item.title, "UUID": item.UUID]
        content.sound = UNNotificationSound.default
        
        let fireDate = item.deadline.dateComponentsToNotify()
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: fireDate, repeats: false)
        let identifier = "\(item.title)"
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        
        AppDelegate.notificationCenter.add(request) { (error) in
            if let error = error {
                print("Error \(error.localizedDescription)")
            }
        }
    }
}

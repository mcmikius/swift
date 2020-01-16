//
//  TodoItem.swift
//  ToDoWithNotification
//
//  Created by Mykhailo Bondarenko on 16.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import Foundation

struct TodoItem {
    var title: String
    var deadline: Date
    var UUID: String
    
    init(deadline: Date, title: String, UUID: String) {
        self.deadline = deadline
        self.title = title
        self.UUID = UUID
    }
    
    var isOverdue: Bool {
        return (Date().compare(self.deadline) == ComparisonResult.orderedDescending) // deadline is earlier than current date
    }
}

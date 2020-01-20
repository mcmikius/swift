//
//  Date+Extensions.swift
//  ToDoWithNotification
//
//  Created by Mykhailo Bondarenko on 16.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import Foundation

extension Date {
    func dateComponentsToNotify() -> DateComponents {
        let calendar = Calendar.current
        let newDate = calendar.date(byAdding: .minute, value: 0, to: self)
        guard let date = newDate else {
            return calendar.dateComponents([.year, .month, .day, .hour, .minute], from: self)
        }
        let components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: date)
        return components
    }
}

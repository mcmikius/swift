//
//  ContentView.swift
//  SwiftUILocalNotification
//
//  Created by Mykhailo Bondarenko on 20.01.2020.
//  Copyright © 2020 Mykhailo Bondarenko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    func setNotification() -> Void {
        let manager = LocalNotificationManager()
        manager.requestPermission()
        manager.addNotification(title: "This is a test reminder")
        manager.scheduleNotifications()
    }
    
    var body: some View {
        VStack {
            Text("Notification Demo")
            Button(action: { self.setNotification() }) {
                Text("Set Notification!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

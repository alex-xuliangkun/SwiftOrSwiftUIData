//
//  IwatchApp.swift
//  App WatchKit Extension
//
//  Created by Taurus on 2022/8/23.
//

import SwiftUI

@main
struct IwatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}

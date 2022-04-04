//
//  Coffee_WatchApp.swift
//  Coffee&Watch WatchKit Extension
//
//  Created by Willian Magnum Albeche on 04/04/22.
//

import SwiftUI

@main
struct Coffee_WatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}

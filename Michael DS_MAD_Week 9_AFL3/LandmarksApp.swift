//
//  Michael_DS_MAD_Week_9_AFL3App.swift
//  Michael DS_MAD_Week 9_AFL3
//
//  Created by student on 19/04/24.
//

import SwiftUI


@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }

        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}

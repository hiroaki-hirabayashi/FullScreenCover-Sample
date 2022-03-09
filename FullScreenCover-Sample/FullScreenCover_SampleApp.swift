//
//  FullScreenCover_SampleApp.swift
//  FullScreenCover-Sample
//
//  Created by Hiroaki-Hirabayashi on 2022/03/09.
//

import SwiftUI

@main
struct FullScreenCover_SampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            FullScreenView()
        }
    }
}

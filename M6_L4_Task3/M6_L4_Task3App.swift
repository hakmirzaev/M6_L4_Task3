//
//  M6_L4_Task3App.swift
//  M6_L4_Task3
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import SwiftUI

@main
struct M6_L4_Task3App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

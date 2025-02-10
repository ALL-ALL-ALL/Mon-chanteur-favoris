//
//  Mon_chanteur_favorisApp.swift
//  Mon chanteur favoris
//
//  Created by  Ixart on 11/02/2025.
//

import SwiftUI
import SwiftData

@main
struct Mon_chanteur_favorisApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

//
//  Mphasis_Coding_ExamApp.swift
//  Mphasis Coding Exam
//
//  Created by admin on 7/28/22.
//

import SwiftUI

@main
struct Mphasis_Coding_ExamApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

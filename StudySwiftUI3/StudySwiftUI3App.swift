//
//  StudySwiftUI3App.swift
//  StudySwiftUI3
//
//  Created by Дэвид Бердников on 09.06.2021.
//

import SwiftUI

@main
struct StudySwiftUI3App: App {
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}

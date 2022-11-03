//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by LZhenHong on 2022/11/1.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}

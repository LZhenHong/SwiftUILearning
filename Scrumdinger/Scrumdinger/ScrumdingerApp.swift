//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by LZhenHong on 2022/11/1.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

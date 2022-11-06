//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by LZhenHong on 2022/11/1.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums) {
                    ScrumStore.save(scrums: store.scrums) { result in
                        if case .failure(let failure) = result {
                            fatalError(failure.localizedDescription)
                        }
                    }
                }
            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case .success(let scrums):
                        store.scrums = scrums
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    }
                }
            }
        }
    }
}

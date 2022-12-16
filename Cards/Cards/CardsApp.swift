//
//  CardsApp.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/16.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var viewState = ViewState()
    
    var body: some Scene {
        WindowGroup {
            CardsView()
                .environmentObject(viewState)
        }
    }
}

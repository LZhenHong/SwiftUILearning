//
//  ViewState.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/16.
//

import SwiftUI

class ViewState: ObservableObject {
    @Published var showAllCards = true {
        didSet {
            if showAllCards {
                selectedCard = nil
            }
        }
    }
    var selectedCard: Card?
    
    convenience init(card: Card) {
        self.init()
        showAllCards = false
        selectedCard = card
    }
}

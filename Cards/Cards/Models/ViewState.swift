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
    
    @Published var selectedElement: CardElement?
    
    var selectedCard: Card? {
        didSet {
            if selectedCard == nil {
                selectedElement = nil
            }
        }
    }
    
    convenience init(card: Card) {
        self.init()
        showAllCards = false
        selectedCard = card
        selectedElement = nil
    }
}

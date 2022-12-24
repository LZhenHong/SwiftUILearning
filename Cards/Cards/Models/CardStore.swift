//
//  CardStore.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/19.
//

import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    
    init(defaultData: Bool = false) {
        cards = defaultData ? initialCards : load()
    }
    
    func index(for card: Card) -> Int? {
        cards.firstIndex { $0.id == card.id }
    }
    
    func addCard() -> Card {
        let card = Card(backgroundColor: Color.random())
        cards.append(card)
        card.save()
        return card
    }
}

extension CardStore {
    func load() -> [Card] {
        var cards: [Card] = []
        guard let path = FileManager.documentURL?.path,
              let enumerator = FileManager.default.enumerator(atPath: path),
              let files = enumerator.allObjects as? [String] else {
            return cards
        }
        
        let cardFiles = files.filter { $0.contains(".rwcard") }
        for cardFile in cardFiles {
            do {
                let path = path + "/" + cardFile
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let decoder = JSONDecoder()
                let card = try decoder.decode(Card.self, from: data)
                cards.append(card)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        return cards
    }
}

//
//  Card.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/19.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    var backgroundColor: Color = .yellow
    var elements: [CardElement] = []
    
    mutating func addElement(uiImage: UIImage) {
        let image = Image(uiImage: uiImage)
        let element = ImageElement(image: image)
        elements.append(element)
    }
    
    mutating func remove(_ element: CardElement) {
        if let index = element.index(in: elements) {
            elements.remove(at: index)
        }
    }
}

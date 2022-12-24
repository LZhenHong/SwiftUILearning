//
//  CardDrop.swift
//  Cards
//
//  Created by Eden on 2022/12/24.
//

import SwiftUI

struct CardDrop: DropDelegate {
    @Binding var card: Card
    
    func performDrop(info: DropInfo) -> Bool {
        let itemProviders = info.itemProviders(for: [.image])
        for item in itemProviders {
            if item.canLoadObject(ofClass: UIImage.self) {
                item.loadObject(ofClass: UIImage.self) { image, _ in
                    if let image = image as? UIImage {
                        DispatchQueue.main.async {
                            card.addElement(uiImage: image)
                        }
                    }
                }
            }
        }
        return true
    }
}

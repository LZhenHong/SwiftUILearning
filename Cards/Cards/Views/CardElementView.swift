//
//  CardElementView.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/19.
//

import SwiftUI

struct CardElementView: View {
    let element: CardElement
    let selected: Bool
    
    var body: some View {
        if let element = element as? ImageElement {
            ImageElementView(element: element)
                .border(Settings.borderColor, width: selected ? Settings.borderWidth : 0)
        }
        if let element = element as? TextElement {
            TextElementView(element: element)
                .border(Settings.borderColor, width: selected ? Settings.borderWidth : 0)
        }
    }
}

struct ImageElementView: View {
    let element: ImageElement
    
    var bodyMain: some View {
        element.image
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
    var body: some View {
        if let frame = element.frame {
            bodyMain
                .clipShape(frame)
        } else {
            bodyMain
        }
    }
}

struct TextElementView: View {
    let element: TextElement
    
    var body: some View {
        if !element.text.isEmpty {
            Text(element.text)
                .font(.custom(element.textFont, size: 200))
                .foregroundColor(element.textColor)
                .scalableText()
        }
    }
}

struct CardElementView_Previes: PreviewProvider {
    static var previews: some View {
        CardElementView(element: initialElements[0], selected: false)
    }
}

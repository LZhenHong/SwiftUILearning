//
//  CardThumbnailView.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/16.
//

import SwiftUI

struct CardThumbnailView: View {
    let card: Card
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(card.backgroundColor)
            .frame(width: Settings.defaultElementSize.width,
                   height: Settings.defaultElementSize.height)
    }
}

struct CardThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        CardThumbnailView(card: initialCards[0])
    }
}

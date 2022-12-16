//
//  CardBottomToolbar.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/16.
//

import SwiftUI

struct CardBottomToolbar: View {
    @Binding var cardModal: CardModal?
    
    var body: some View {
        HStack {
            Button {
                cardModal = .photoPicker
            } label: {
                ToolbarButtonView(modal: .photoPicker)
            }
            Button {
                cardModal = .framePicker
            } label: {
                ToolbarButtonView(modal: .framePicker)
            }
            Button {
                cardModal = .stickerPicker
            } label: {
                ToolbarButtonView(modal: .stickerPicker)
            }
            Button {
                cardModal = .textPicker
            } label: {
                ToolbarButtonView(modal: .textPicker)
            }
        }
    }
}

struct ToolbarButtonView: View {
    let modal: CardModal
    
    private let modalButton: [CardModal: (text: String, imageName: String)] = [
        .photoPicker: ("Photos", "photo"),
        .framePicker: ("Frames", "square.on.circle"),
        .stickerPicker: ("Stickers", "heart.circle"),
        .textPicker: ("Text", "textformat")
    ]
    
    var body: some View {
        if let text = modalButton[modal]?.text, let imageName = modalButton[modal]?.imageName {
            VStack {
                Image(systemName: imageName)
                    .font(.largeTitle)
                Text(text)
            }
            .padding(.top)
        }
    }
}

struct CardBottomToolbar_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomToolbar(cardModal: .constant(.stickerPicker))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

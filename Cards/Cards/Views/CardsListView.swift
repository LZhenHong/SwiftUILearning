//
//  CardsListView.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/16.
//

import SwiftUI

struct CardsListView: View {
    @EnvironmentObject var viewState: ViewState
    @EnvironmentObject var store: CardStore
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(store.cards) { card in
                    CardThumbnailView(card: card)
                        .onTapGesture {
                            viewState.showAllCards.toggle()
                            viewState.selectedCard = card
                        }
                }
            }
        }
        .padding()
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
            .environmentObject(ViewState())
            .environmentObject(CardStore(defaultData: true))
    }
}

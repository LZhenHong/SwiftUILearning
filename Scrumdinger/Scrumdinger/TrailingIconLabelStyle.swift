//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by LZhenHong on 2022/11/2.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self {
        Self()
    }
}

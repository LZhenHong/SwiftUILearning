//
//  ColorExtensions.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/17.
//

import SwiftUI

extension Color {
    static let colors: [Color] = [
        .green, .red, .blue, .gray, .yellow, .pink, .orange, .purple
    ]
    
    static func random() -> Color {
        colors.randomElement() ?? .black
    }
}

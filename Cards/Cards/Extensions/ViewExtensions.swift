//
//  ViewExtensions.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/17.
//

import SwiftUI

extension View {
    func resizableView(transform: Binding<Transform>) -> some View {
        return modifier(ResizableView(transform: transform))
    }
}

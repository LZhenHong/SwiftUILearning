//
//  ViewExtensions.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/17.
//

import SwiftUI

extension View {
    func resizableView() -> some View {
        return modifier(ResizableView())
    }
}

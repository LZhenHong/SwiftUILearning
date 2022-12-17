//
//  Operators.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/17.
//

import SwiftUI

func +(lhs: CGSize, rhs: CGSize) -> CGSize {
    CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
}

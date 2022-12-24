//
//  FileManagerExtensions.swift
//  Cards
//
//  Created by Eden on 2022/12/24.
//

import Foundation

extension FileManager {
    static var documentURL: URL? {
        return Self.default.urls(for: .documentDirectory, in: .userDomainMask).first
    }
}

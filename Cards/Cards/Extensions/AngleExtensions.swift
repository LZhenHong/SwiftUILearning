//
//  AngleExtensions.swift
//  Cards
//
//  Created by Eden on 2022/12/24.
//

import SwiftUI

extension Angle: Codable {
    enum CodingKeys: CodingKey {
        case degrees
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let degrees = try container.decode(Double.self, forKey: .degrees)
        self.init(degrees: degrees)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(degrees, forKey: .degrees)
    }
}
//
//  CardModal.swift
//  Cards
//
//  Created by LZhenHong on 2022/12/16.
//

import Foundation

enum CardModal: Identifiable {
    var id: Int {
        hashValue
    }
    
    case photoPicker, framePicker, stickerPicker, textPicker
}

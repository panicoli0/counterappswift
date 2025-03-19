//
//  Item.swift
//  counterapp
//
//  Created by Pablo Nicoli on 19/03/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

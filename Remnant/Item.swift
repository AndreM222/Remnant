//
//  Item.swift
//  Remnant
//
//  Created by Andre Mossi on 10/22/26.
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

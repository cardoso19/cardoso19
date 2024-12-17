//
//  Item.swift
//  Profile
//
//  Created by Matheus Kuhn on 12.05.23.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let icon: String
    let isIconEmoji: Bool
    let iconColor: Color
    let color: Color
    let text: String
    let textColor: Color
    let font: Font
}

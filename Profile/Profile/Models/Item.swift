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
    let iconColor: Color
    let color: Color
    let text: String
}

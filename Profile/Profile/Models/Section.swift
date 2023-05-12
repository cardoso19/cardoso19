//
//  Section.swift
//  Profile
//
//  Created by Matheus Kuhn on 12.05.23.
//

import Foundation

struct Section: Identifiable {
    let id = UUID()
    let title: String
    let items: [Item]
}

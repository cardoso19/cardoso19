//
//  BaseDimension.swift
//  Profile
//
//  Created by Matheus Kuhn on 12.05.23.
//

import Foundation

enum BaseDimension {
    private static let baseValue: CGFloat = 8
    
    static func times(_ value: CGFloat) -> CGFloat {
        baseValue * value
    }
}

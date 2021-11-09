//
//  TapperModel.swift
//  BareBonesSwiftUI
//
//  Created by Aleksandar Matijaca on 2021-07-14.
//

import Foundation

struct TapperModel {
    
    private(set) var valueToBeReturned: Int
    
    mutating func modelDealsWithTap() {
        valueToBeReturned = Int.random(in: 0..<10)
    }
}

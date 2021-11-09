//
//  TapperModelView.swift
//  BareBonesSwiftUI
//
//  Created by Aleksandar Matijaca on 2021-07-14.
//

import SwiftUI

class TapperViewModel: ObservableObject  {
    
    @Published private(set) var model: TapperModel = TapperModel(valueToBeReturned: 0)
    
    func tappedButton() {
        model.modelDealsWithTap()
    }
    
    func getModelValue() -> Int {
        return model.valueToBeReturned
    }
}

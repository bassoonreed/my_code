//
//  BareBonesSwiftUIApp.swift
//  BareBonesSwiftUI
//
//  Created by Aleksandar Matijaca on 2021-07-14.
//

import SwiftUI

@main
struct BareBonesSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = TapperViewModel()
            ContentView(viewModel: viewModel) // makes sense..
        }
    }
}

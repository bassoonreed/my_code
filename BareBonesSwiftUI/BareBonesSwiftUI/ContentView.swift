//
//  ContentView.swift
//  BareBonesSwiftUI
//
//  Created by Aleksandar Matijaca on 2021-07-14.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: TapperViewModel
    
    var body: some View {

        HStack {
            Text("From Model: \(viewModel.getModelValue())")
                .padding()
            Button(action: {
                // do something here
                print("i tapped on this button")
                viewModel.tappedButton()
            }, label: {
                Text("My Button")
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading, .bottom], 4.0)
            })
            .padding()
        }
    }
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = TapperViewModel()
        ContentView(viewModel: viewModel)
            .preferredColorScheme(.light)
    }
}

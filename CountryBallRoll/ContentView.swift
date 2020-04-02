//
//  ContentView.swift
//  CountryBallRoll
//
//  Created by Muhammad Fawwaz Mayda on 02/04/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var id=0;
    var body: some View {
        HStack{
            Image("italyball")
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150.0)
            Spacer()
            Image("germanyball")
            .resizable().aspectRatio(contentMode: .fit)
            .frame(width: 150.0, height: 150.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

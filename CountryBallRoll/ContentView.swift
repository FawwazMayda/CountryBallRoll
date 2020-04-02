//
//  ContentView.swift
//  CountryBallRoll
//
//  Created by Muhammad Fawwaz Mayda on 02/04/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI
struct ImageIndex {
    var leftIndex = 0
    var rightIndex = 0
}
struct ContentView: View {
    @State var imgIndex = ImageIndex()
    @State var show=false
    var ballName = ["germanyball","italyball","indonesiaball","unball","japanball"]
    
    func updateIndex() {
        let maxId = ballName.count
        self.imgIndex.leftIndex = Int.random(in: 0..<maxId)
        self.imgIndex.rightIndex = Int.random(in: 0..<maxId)
        
    }
    var body: some View {
        ZStack{
           Image("worldball")
            .resizable().edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(ballName[imgIndex.leftIndex])
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                Spacer()
                    Image(ballName[imgIndex.rightIndex])
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150.0)
                }
                Divider()
                Button(action: {
                    self.show.toggle()
                    self.updateIndex()
                }) {
                    Text("BOLA").font(.footnote)
                        .fontWeight(.heavy)
                }.background(Color.red)
                
                if self.show {
                    Text("Mengapa Engkau Bola")
                } else {
                    Text("Mengapa Engkau Kotak")
                }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

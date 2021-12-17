//
//  ContentView.swift
//  Shared
//
//  Created by Alessandra De Matteo on 10/12/21.
//

import SwiftUI
import SpriteKit

extension Color{
    static let lightGray = Color("lightGray")
}

struct ContentView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 600, height: 350)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View {
        VStack {
            Image("musicapp")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("Choose three or more")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text("favourites")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text("Drag in the bag the music genres you")
                .font(.title3)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .offset(y: 10)
            Text("like the most")
                .font(.title3)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .offset(y: 10)
            Spacer()
                                  ScrollView(.horizontal) {
                SpriteView(scene: scene)
                    .frame(width: 600, height: 350)
                    .ignoresSafeArea()
                                  }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                ZStack{
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.white, .lightGray]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 110, height: 110, alignment: .center)
                        .shadow(color: .gray, radius: 2, x: 0, y: 0)
                    Text("Next")
                        .foregroundColor(.pink)
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



//
//  MusicGenreView.swift
//  App Redesign Music
//
//  Created by Alessandra De Matteo on 10/12/21.
//

import SwiftUI

struct MusicGenreView: View {
    var body: some View {
        Text("Rock")
            .foregroundColor(.white)
            .frame(width: 80, height: 80, alignment: .center)
            .padding()
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.pink, .red]), startPoint: .top, endPoint: .bottom))
            )
    }
}

struct MusicGenreView_Previews: PreviewProvider {
    static var previews: some View {
        MusicGenreView()
    }
}

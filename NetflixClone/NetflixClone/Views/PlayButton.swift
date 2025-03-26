//
//  PlayButton.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 20/03/25.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor: Color = .white
    
    var action: () -> Void
    
    var body: some View {
        Button (action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3)
        })
    }
}

#Preview {
    ZStack {
        Color.black
        PlayButton(text: "Play", imageName: "play.fill") {
            //
        }
    }
}

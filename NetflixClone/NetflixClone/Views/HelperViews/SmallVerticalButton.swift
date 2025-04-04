//
//  SmallVerticalButton.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    var color: Color = .white
    var isOn: Bool
    var imageName: String {
        if isOn {
            return isOnImage
        }
        return isOffImage
    }
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(color)
                Text(text)
                    .foregroundColor(color)
                    .font(.system(size: 14))
                    .bold()
            }
        }

    }
}

#Preview {
    ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        SmallVerticalButton(text: "MyList", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
            print("Tapped")
        }
    }
}

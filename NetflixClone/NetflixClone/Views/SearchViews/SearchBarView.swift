//
//  SearchBarView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 28/03/25.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 280, height: 36)
                .cornerRadius(8)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.graySearchText)
                    .padding(.leading, 10)
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                    .background(.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
                Button {
                   // clear the text
                }label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.graySearchText)
                        .frame(width: 35, height: 35)
                }
                .padding(.trailing, 18)
                
                Button {
                    // clear text, hide both buttons, give up first-responder
                } label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                }
                .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        SearchBarView()
            .padding()
    }
    
}

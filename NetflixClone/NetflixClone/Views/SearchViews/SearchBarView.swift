//
//  SearchBarView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 28/03/25.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text: String
    @State private var isEditing = true
    @Binding var isLoading: Bool
    
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
                    .onTapGesture {
                        isEditing = true
                    }
                
                if !text.isEmpty {
                    if isLoading {
                        Button {
                            text = ""
                        }label: {
                            ActivityIndicator(style: .medium, animate: .constant(true))
                                .configure{
                                    $0.color = .white
                                }
                        }
                        .padding(.trailing, 32)
                        .frame(width: 35, height: 35)
                    } else {
                        Button {
                            text = ""
                        }label: {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.graySearchText)
                                .frame(width: 35, height: 35)
                        }
                        .padding(.trailing, 18)
                    }
                }
                
                if isEditing {
                    Button {
                        text = ""
                        isEditing = false
                        hideKeyboard()
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 10)
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        SearchBarView(text: .constant(""), isLoading: .constant(false))
            .padding()
    }
    
}

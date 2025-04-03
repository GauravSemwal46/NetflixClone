//
//  PreviewView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 02/04/25.
//

import SwiftUI

struct PreviewView: View {
    
    @ObservedObject var viewModel: PreviewViewModel
    var playVideo: Bool
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            TrailerPlayerView(
                videoUrl: viewModel.movie.trailers.first?.videoUrl,
                playVideo: .constant(playVideo)
            )
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(viewModel.movie.name)
                            .bold()
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 60)
                
                Spacer()
                
                HStack {
                    ForEach(0..<viewModel.movie.categories.count) { index in
                        let category = viewModel.movie.categories[index]
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if index != viewModel.movie.categories.count - 1 {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    SmallVerticalButton(
                        text: "MyList",
                        isOnImage: "checkmark",
                        isOffImage: "plus",
                        color: viewModel.movie.accentColor,
                        isOn: true) {
                            //
                        }
                    Spacer()
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "arrowtriangle.right.fill")
                            Text("PLAY")
                                .fontWeight(.heavy)
                        }
                        .padding(.vertical, 12)
                        .padding(.horizontal, 26)
                        .border(viewModel.movie.accentColor, width: 3)
                    }
                    Spacer()
                    SmallVerticalButton(
                        text: "Info",
                        isOnImage: "info.circle",
                        isOffImage: "info.circle",
                        color: viewModel.movie.accentColor,
                        isOn: true) {
                            //
                        }
                    Spacer()
                }
                .padding(.top, 14)
            }
            .padding(.bottom, 48)
            .foregroundColor(viewModel.movie.accentColor)
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

#Preview {
    PreviewView(viewModel: PreviewViewModel(movie: exampleMovie1), playVideo: true)
}

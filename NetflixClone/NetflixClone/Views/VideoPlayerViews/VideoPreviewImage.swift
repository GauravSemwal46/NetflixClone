//
//  VideoPreviewImage.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 26/03/25.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    var imageUrl: URL
    var videoUrl: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Button {
                showingVideoPlayer = true
            } label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            }
            .sheet(isPresented: $showingVideoPlayer) {
                SwiftUIVideoView(url: videoUrl)
            }
        }
    }
}

#Preview {
    VideoPreviewImage(imageUrl: exampleImageUrl, videoUrl: exampleVideoUrl)
}

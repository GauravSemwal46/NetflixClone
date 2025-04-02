//
//  TrailerPlayerView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 02/04/25.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {
    var videoUrl: URL?
    @Binding var playVideo: Bool
    
    var body: some View {
        if videoUrl != nil {
            VideoPlayer(url: videoUrl!, play: $playVideo)
        } else {
            Text("Could not load video")
        }
    }
}

#Preview {
    TrailerPlayerView(videoUrl: nil, playVideo: .constant(true))
}

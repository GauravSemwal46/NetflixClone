//
//  SwiftUIVideoView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 26/03/25.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    var url: URL
    
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

#Preview {
    SwiftUIVideoView(url: exampleVideoUrl)
}

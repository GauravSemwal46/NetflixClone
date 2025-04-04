//
//  PreviewList.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 03/04/25.
//

import SwiftUI

struct PreviewList: View {
    
    var movies: [Movie]
    
    @Binding var currentSelection: Int
    @Binding var isVisible: Bool
    
    @State private var currentTranslation: CGFloat = 0
    
    let externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>
    
    let screen = UIScreen.main.bounds
    
    func shouldPlayVideo(index: Int) -> Bool {
        if !isVisible {
            return false
        }
        if index != currentSelection {
            return false
        }
        return true
    }
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            PagerView(
                pageCount: movies.count,
                currentIndex: $currentSelection,
                translation: $currentTranslation,
                externalDragGesture: externalDragGesture) {
                    ForEach(0..<movies.count) { movieIndex in
                        let movie = movies[movieIndex]
                        
                        PreviewView(viewModel: PreviewViewModel(movie: movie), playVideo: shouldPlayVideo(index: movieIndex))
                            .frame(width: screen.width)
                    }
                }
                .frame(width: screen.width)
        }
    }
}

//struct DummyPreviewList: View {
//    @State private var currentSelection = 0
//    @State private var isVisible = true
//    var body: some View {
//        PreviewList(movies: exampleMovies, currentSelection: $currentSelection, isVisible: $isVisible, externalDragGesture: externalDragGesture)
//    }
//}
//
//#Preview {
//    DummyPreviewList()
//}

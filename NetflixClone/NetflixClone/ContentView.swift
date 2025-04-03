//
//  ContentView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showPreviewFullScreen = false
    @State private var previewStartIndex: Int = 0
    @State private var previewCurrentPosition: CGFloat = 1000
    @State private var previewNewPosition: CGFloat = 1000
    @State private var previewHorizontalDragActive: Bool = false
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        let previewDragGesture = DragGesture(minimumDistance: 20)
            .onChanged { value in
                if previewHorizontalDragActive {
                    return
                }
                
                if previewCurrentPosition == .zero {
                    if abs(value.translation.width) > abs(value.translation.height) {
                        previewHorizontalDragActive = true
                        return
                    }
                }
                let shouldBePosition = value.translation.height + self.previewNewPosition
                
                if shouldBePosition < 0 {
                    return
                } else {
                    self.previewCurrentPosition = shouldBePosition
                }
            }
            .onEnded { value in
                if previewHorizontalDragActive {
                    previewHorizontalDragActive = false
                    return
                }
                
                let shouldBePosition = value.translation.height + previewNewPosition
                
                if shouldBePosition < 0 {
                    self.previewCurrentPosition = .zero
                    self.previewNewPosition = .zero
                } else {
                    let closingPoint = screen.size.height * 0.2
                    if shouldBePosition > closingPoint {
                        withAnimation {
                            self.showPreviewFullScreen = false
                            self.previewNewPosition = screen.height + 20
                            self.previewCurrentPosition = screen.height + 20
                        }
                    } else {
                        withAnimation {
                            self.previewNewPosition = .zero
                            self.previewCurrentPosition = .zero
                        }
                    }
                }
                previewHorizontalDragActive = false
            }
        
        ZStack {
            TabView {
                HomeView(showPreviewFullScreen: $showPreviewFullScreen, previewStartingIndex: $previewStartIndex)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }.tag(1)
                ComingSoonView()
                    .tabItem {
                        Image(systemName: "play.rectangle")
                        Text("Coming Soon")
                    }.tag(2)
                DownloadView()
                    .tabItem {
                        Image(systemName: "arrow.down.to.line.alt")
                        Text("Downloads")
                    }.tag(3)
            }
            .accentColor(.white)
            .background(.black)
            .onAppear {
                UITabBar.appearance().barTintColor = .black
            }
            
            PreviewList(movies: exampleMovies, currentSelection: $previewStartIndex, isVisible: $showPreviewFullScreen, externalDragGesture: previewDragGesture)
                .offset(y: previewCurrentPosition)
                .isHidden(!showPreviewFullScreen)
                .animation(.easeIn, value: 0)
                .transition(.move(edge: .bottom))
        }
        .onChange(of: showPreviewFullScreen, { _, newValue in
            if newValue {
                withAnimation {
                    previewCurrentPosition = .zero
                    previewNewPosition = .zero
                }
            } else {
                withAnimation {
                    self.previewCurrentPosition = screen.height + 20
                    self.previewNewPosition = .zero
                }
            }
        })
    }
}

#Preview {
    ContentView()
}

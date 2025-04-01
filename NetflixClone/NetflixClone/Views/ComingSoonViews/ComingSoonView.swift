//
//  ComingSoonView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 01/04/25.
//

import SwiftUI

struct ComingSoonView: View {
    
    @State private var showNotificationList = false
    @State private var navBarHidden = true
    @State private var movieDetailToShow: Movie? = nil
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex = 0
    @ObservedObject var viewModel = ComingSoonViewModel()
    
    func updateActiveIndex(fromScroll scroll: CGFloat) {
        if scroll < 105 {
            activeIndex = 0
        } else {
            let remove105 = scroll - 105
            let active = Int(remove105 / 410) + 1
            activeIndex = Int(active)
        }
    }
    
    var body: some View {
        let movies = viewModel.movies.enumerated().map({$0})
        
        let scrollTrackingBinding = Binding {
            return scrollOffset
        } set: { newVal in
            scrollOffset = newVal
            updateActiveIndex(fromScroll: newVal)
        }
        
        return Group {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                TrackableScrollView(.vertical, showIndicators: false, contentOffset: scrollTrackingBinding) {
                    LazyVStack {
                        NotificationBarView(showNotificationList: $showNotificationList)
                        
                        ForEach(Array(movies), id: \.offset) { index, movie in
                            ComingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                .frame(height: 400)
                                .overlay {
                                    Group {
                                        index == activeIndex ? Color.clear : Color.black.opacity(0.8)
                                    }
                                    .animation(.easeInOut, value: activeIndex)
                                }
                        }
                    }
                }
                .foregroundColor(.white)
                NavigationLink(destination: Text("Notification View"), isActive: $showNotificationList) {
                    EmptyView()
                }
                .navigationTitle("")
                .navigationBarHidden(navBarHidden)
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
                    self.navBarHidden = true
                }
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                    self.navBarHidden = false
                }
            }
            
        }
    }
}

#Preview {
    ComingSoonView()
}

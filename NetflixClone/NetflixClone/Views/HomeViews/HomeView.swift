//
//  HomeView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import SwiftUI

struct HomeView: View {
    var viewModel = HomeViewModel()
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie4)
                        .frame(width: screen.width)
                        .padding(.top, -100)
                        .zIndex(-1)
                    
                    ForEach(viewModel.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(viewModel.getMovie(forCategory: category)) { movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                            .onTapGesture(perform: {
                                                movieDetailToShow = movie
                                            })
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    HomeView()
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            .buttonStyle(PlainButtonStyle())
            Spacer()
            Button {
                //
            } label: {
                Text("TV Shows")
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button {
                //
            } label: {
                Text("Movies")
            }
            .buttonStyle(PlainButtonStyle())
            Spacer()
            Button {
                //
            } label: {
                Text("My List")
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}

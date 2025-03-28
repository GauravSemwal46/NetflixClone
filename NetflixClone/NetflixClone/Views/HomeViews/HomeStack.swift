//
//  HomeStack.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 28/03/25.
//

import SwiftUI

struct HomeStack: View {
    var viewModel: HomeViewModel
    var topRowSelection: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
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
                        ForEach(viewModel.getMovie(forCategory: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
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

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        ScrollView {
            HomeStack(viewModel: HomeViewModel(), topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
        }
        .foregroundColor(.white)
    }
}

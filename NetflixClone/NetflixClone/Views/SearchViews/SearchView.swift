//
//  SearchView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 30/03/25.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var viewModel = SearchViewModel()
    
    @State private var searchText = ""
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set: {
            searchText = $0
            viewModel.updateSearchText(with: $0)
        }
        
        return ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                SearchBarView(text: searchTextBinding, isLoading: $viewModel.isLoading)
                    .padding()
                
                ScrollView {
                    if viewModel.isShowingPopularMovies {
                        PopularList(movies: viewModel.popularMovies, movieDetailToShow: $movieDetailToShow)
                    }
                    
                    if viewModel.viewState == .empty {
                        Text("Your search did not have any results.")
                            .bold()
                            .padding(.top, 150)
                    } else if viewModel.viewState == .ready && !viewModel.isShowingPopularMovies {
                        VStack {
                            HStack {
                                Text("Movies & TV")
                                    .bold()
                                    .font(.title3)
                                    .padding(.leading, 12)
                                Spacer()
                            }
                            
                            SearchResultsGrid(movies: viewModel.searchResults, movieDetailToShow: $movieDetailToShow)
                        }
                    }
                }
                Spacer()
            }
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    SearchView()
}

struct PopularList: View {
    
    var movies: [Movie]
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular Searches")
                    .bold()
                    .font(.title)
                    .padding(.leading, 12)
                Spacer()
            }
            
            LazyVStack {
                ForEach(movies, id: \.id) { movie in
                    PopularMovieView(movie: movie, movieDetailToShow: $movieDetailToShow)
                        .frame(height: 75)
                }
            }
        }
    }
}

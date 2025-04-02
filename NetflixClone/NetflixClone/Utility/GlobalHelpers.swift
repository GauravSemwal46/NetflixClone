//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 19/03/25.
//

import Foundation
import SwiftUI

let exampleVideoUrl = URL(string: "https://www.w3schools.com/tags/mov_bbb.mp4")!
let exampleImageUrl = URL(string: "https://picsum.photos/300/104")!
let exampleImageUrl2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageUrl3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageUrl: URL {
    return [exampleImageUrl, exampleImageUrl2, exampleImageUrl3].randomElement() ?? exampleImageUrl
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoUrl: exampleVideoUrl, thumbnailImageUrl: randomExampleImageUrl)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoUrl: exampleVideoUrl, thumbnailImageUrl: randomExampleImageUrl)
let exampleTrailer3 = Trailer(name: "Dark", videoUrl: exampleVideoUrl, thumbnailImageUrl: randomExampleImageUrl)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(
    name: "Beginning and ending",
    season: 1,
    episodeNumber: 1,
    thumbnailImageUrlString: "https://picsum.photos/300/102",
    description: "Six month after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoUrl: exampleVideoUrl
)
let episode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageUrlString: "https://picsum.photos/300/103",
    description: "Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
    length: 54,
    videoUrl: exampleVideoUrl
)
let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailImageUrlString: "https://picsum.photos/300/104",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egos questions Ulrich again.",
    length: 56,
    videoUrl: exampleVideoUrl
)
let episode4 = Episode(
    name: "Beginning and ending",
    season: 2,
    episodeNumber: 1,
    thumbnailImageUrlString: "https://picsum.photos/300/105",
    description: "Six month after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoUrl: exampleVideoUrl
)
let episode5 = Episode(
    name: "Dark Matter",
    season: 2,
    episodeNumber: 2,
    thumbnailImageUrlString: "https://picsum.photos/300/106",
    description: "Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
    length: 54,
    videoUrl: exampleVideoUrl
)
let episode6 = Episode(
    name: "Ghosts",
    season: 2,
    episodeNumber: 3,
    thumbnailImageUrlString: "https://picsum.photos/300/107",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egos questions Ulrich again.",
    length: 56,
    videoUrl: exampleVideoUrl
)

let allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

let exampleMovie1 =  Movie(
    id: UUID().uuidString,
    name: "Dark",
    thumbnailUrl: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jante Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordan Triebel",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers,
    previewImageName: "arrestedDevPreview",
    previewVideoUrl: exampleVideoUrl
)
let exampleMovie2 =  Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailUrl: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jante Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordan Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImageName: "darkPreview",
    previewVideoUrl: exampleVideoUrl
)
let exampleMovie3 =  Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailUrl: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jante Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordan Triebel",
    moreLikeThisMovies: [],
    promotionalHeadline: "New episodes coming soon",
    trailers: exampleTrailers,
    previewImageName: "dirtyJohnPreview",
    previewVideoUrl: exampleVideoUrl
)
let exampleMovie4 =  Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailUrl: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jante Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordan Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImageName: "ozarkPreview",
    previewVideoUrl: exampleVideoUrl
)
let exampleMovie5 =  Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailUrl: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jante Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordan Triebel",
    moreLikeThisMovies: [],
    promotionalHeadline: "Watch season 5 now",
    trailers: exampleTrailers,
    previewImageName: "travelersPreview",
    previewVideoUrl: exampleVideoUrl
)
let exampleMovie6 =  Movie(
    id: UUID().uuidString,
    name: "After life",
    thumbnailUrl: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jante Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordan Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImageName: "whiteLinesPreview",
    previewVideoUrl: exampleVideoUrl
)
let exampleMovie7 =  Movie(
    id: UUID().uuidString,
    name: "After life",
    thumbnailUrl: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Supernatural", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jante Friese",
    cast: "Louis Hofman, Oliver Masucci, Jordan Triebel",
    moreLikeThisMovies: [],
    trailers: exampleTrailers,
    previewImageName: "travelersPreview",
    previewVideoUrl: exampleVideoUrl
)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginning and Ending", description: "Six month after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(colors: [.black.opacity(0.0), .black.opacity(0.95)], startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

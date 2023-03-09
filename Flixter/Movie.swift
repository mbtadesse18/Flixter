//
//  Movie.swift
//  Flixter
//
//  Created by Mariamawit Tadesse on 3/8/23.
//

import Foundation

struct Movie {
    let trackName: String
    let artistName: String
    let longDescription: String
    let artworkUrl100: URL

    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int

}

// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Movie {

    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        Movie(trackName: "The Karate Kid (2010)",
              artistName: "Harald Zwart",
              longDescription: "In Columbia Pictures' The Karate Kid, 12-year-old Dre Parker (Jaden Smith) could've been the most popular kid in Detroit, but his mother's (Taraji P. Henson) latest career move has landed him in China. Dre immediately falls for his classmate Mei Ying - and the feeling is mutual - but cultural differences make such a friendship impossible. Even worse, Dre's feelings make an enemy of the class bully, Cheng. In the land of kung fu, Dre knows only a little karate, and Cheng puts \"the karate kid\" on the floor with ease. With no friends in a strange land, Dre has nowhere to turn but maintenance man Mr. Han (Jackie Chan), who is secretly a master of kung fu. As Han teaches Dre that kung fu is not about punches and parries, but maturity and calm, Dre realizes that facing down the bullies will be the fight of his life.",
              artworkUrl100: URL(string:"https://is2-ssl.mzstatic.com/image/thumb/Video/61/15/ae/mzl.pfusteas.jpg/100x100bb.jpg")!,
             collectionName: "Karate Kid (1984) / The Karate Kid (2010)",
             primaryGenreName: "Action & Adventure",
              releaseDate: Date(),
              trackTimeMillis: 8400063),
        Movie(trackName: "Bad Boys for Life",
              artistName: "Adil & Bilall",
              longDescription: "The Bad Boys Mike Lowrey (Will Smith) and Marcus Burnett (Martin Lawrence) are back together for one last ride in the highly anticipated Bad Boys for Life.",
              artworkUrl100: URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Video123/v4/29/15/63/291563a1-4fdc-8cbf-56e9-e742f4e46188/SPE_BAD_BOYS_FOR_LIFE_FINAL_US_ARTWORK_EN_EN-US_2000x3000_233N4W000007EX.lsr/100x100bb.jpg")!,
              collectionName: "Bad Boys 3-Movie Collection",
              primaryGenreName: "Action & Adventure",
               releaseDate: Date(),
               trackTimeMillis: 7446645),
        Movie(trackName: "Men In Black II",
              artistName: "Barry Sonnenfeld",
              longDescription: "Agent J and Agent K are back! Agent J (Will Smith) needs help with a new breed of alien terror intent on destroying the planet. He is sent to find Agent K (Jones), restore his memory and enlist him in the fight of a lifetime.",
              artworkUrl100: URL(string: "https://is4-ssl.mzstatic.com/image/thumb/Video/v4/64/52/5d/64525d70-b0bc-0b6c-6633-233c108aa1cd/mza_6419815163720138939.jpg/100x100bb.jpg")!,
              collectionName: "Men in Black Trilogy",
              primaryGenreName: "Action & Adventure",
               releaseDate: Date(),
               trackTimeMillis: 5288383)
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}

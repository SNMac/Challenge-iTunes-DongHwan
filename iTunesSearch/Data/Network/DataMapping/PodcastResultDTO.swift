//
//  PodcastResultDTO.swift
//  iTunesSearch
//
//  Created by 서동환 on 5/12/25.
//

import Foundation

// MARK: - Result
struct PodcastResultDTO: Decodable {
    let wrapperType: String
    let kind: String
    let collectionID: Int
    let trackID: Int
    let artistName: String
    let collectionName: String
    let trackName: String
    let collectionCensoredName: String?
    let trackCensoredName: String?
    let collectionViewURL: String
    let trackViewURL: String
    let artworkUrl30: String?
    let artworkUrl60, artworkUrl100: String
    let collectionPrice: Double?
    let trackPrice: Double?
    let collectionHDPrice: Double?
    let releaseDate: String
    let collectionExplicitness: String
    let trackExplicitness: String
    let trackCount: Int
    let trackTimeMillis: Int?
    let country: String
    let currency: String
    let primaryGenreName: String
    let contentAdvisoryRating: String?
    let artworkUrl600: String?
    let genreIDS: [String]?
    let genres: [String]?
    let artistID: Int?
    let artistViewURL: String?
    let feedURL: String?
    
    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case artistID = "artistId"
        case collectionID = "collectionId"
        case trackID = "trackId"
        case artistName, collectionName, trackName, collectionCensoredName, trackCensoredName
        case artistViewURL = "artistViewUrl"
        case collectionViewURL = "collectionViewUrl"
        case feedURL = "feedUrl"
        case trackViewURL = "trackViewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice
        case collectionHDPrice = "collectionHdPrice"
        case releaseDate, collectionExplicitness, trackExplicitness, trackCount, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, artworkUrl600
        case genreIDS = "genreIds"
        case genres
    }
}

extension PodcastResultDTO {
    func toModel() -> PodcastResultModel {
        return PodcastResultModel(artistName: artistName,
                                  collectionName: collectionName,
                                  trackName: trackName,
                                  artistViewURL: artistViewURL,
                                  collectionViewURL: collectionViewURL,
                                  feedURL: feedURL,
                                  trackViewURL: trackViewURL,
                                  artworkUrl100: artworkUrl100,
                                  releaseDate: releaseDate,
                                  trackCount: trackCount,
                                  trackTimeMillis: trackTimeMillis,
                                  primaryGenreName: primaryGenreName,
                                  artworkUrl600: artworkUrl600,
                                  marketingPhrase: PodcastMarketingPhrases.allCases.randomElement()!.rawValue)
    }
}

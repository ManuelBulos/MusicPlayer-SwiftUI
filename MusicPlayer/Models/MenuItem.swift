//
//  MenuItem.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

enum MenuItem: String, Identifiable {
    case songs
    case albums
    case artists
    case playlists
    case home
    case favorite
    case trend
    case radio
    case games
    case music
    case movies

    var title: String {
        return self.rawValue.capitalized
    }

    var icon: String {
        return title
    }

    var selectedIcon: String {
        return "\(icon)_selected"
    }

    var id: Int {
        return hashValue
    }

    static let libraryData: [MenuItem] =
        [.songs,
         .albums,
         .artists,
         .playlists]

    static let discoverData: [MenuItem]  =
        [.home,
         .favorite,
         .trend,
         .radio]

    static let storeData: [MenuItem]  =
        [.games,
         .music,
         .movies]
}

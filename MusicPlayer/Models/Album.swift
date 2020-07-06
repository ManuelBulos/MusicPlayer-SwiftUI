//
//  Album.swift
//  MusicPlayer
//
//  Created by Manuel on 28/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import Foundation

struct Album: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let tags: [String]
    let artistID: UUID
    let imageURL: String
    let artistName: String
    let description: String
}

extension String {
    var url: URL? {
        return URL(string: self)
    }
}

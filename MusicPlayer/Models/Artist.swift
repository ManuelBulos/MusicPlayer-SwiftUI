//
//  Artist.swift
//  MusicPlayer
//
//  Created by Manuel on 28/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import Foundation

struct Artist: Hashable, Identifiable {
    let id: UUID
    let name: String
    let albums: [Album]
    let imageURL: String
    let description: String

    
    static var blackbear: Artist {

        let id = UUID()

        let deadrosesAlbum: Album =
            Album(title: "Deadroses",
                  tags: ["Blackbear", "R&B", "Trap", "2015"],
                  artistID: id,
                  imageURL: "https://images-na.ssl-images-amazon.com/images/I/71tg6RBwlpL._SL1200_.jpg",
                  artistName: "Blackbear",
                  description: "Released on February 14th, 2015, this is the tracklist for Blackbear’s 2nd major album release titled Deadroses.")

        let artist = Artist(id: id,
                            name: "Blackbear",
                            albums: [deadrosesAlbum],
                            imageURL: "https://static01.nyt.com/images/2017/11/23/arts/23album/23album-superJumbo.jpg?quality=90&auto=webp",
                            description: "American hip hop recording artist, singer, songwriter and record producer.\nBlackbear is best known for his rap and R&B-oriented music.")
        return artist
    }
}

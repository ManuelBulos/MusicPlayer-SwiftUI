//
//  AlbumDetailView.swift
//  MusicPlayer
//
//  Created by Manuel on 16/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct AlbumDetailView: View {

    let album: Album

    var body: some View {
        VStack(spacing: 0) {
            AlbumHeaderView(album: album)
        }
        .background(Color.background)
    }
}

struct AlbumHeaderView: View {
    let album: Album

    var body: some View {
        HStack {
            RoundedImage(url: album.imageURL.url)

            VStack(alignment: .leading, spacing: 16) {

                TagCollectionView(tags: album.tags) { (tag) in
                    print("clicked on tag: \(tag)")
                }

                HeaderText(album.title)

                TextButton(album.artistName) {
                    print("clicked on artist name: \(self.album.artistName)")
                }

                Text(album.description)
                    .foregroundColor(.gray)

                RoundedButton("Play Album", imageName: "") {
                    print("clicked on play album")
                }
                .foregroundColor(.accent)

                Spacer()

            }
            .padding()

        }
    }
}

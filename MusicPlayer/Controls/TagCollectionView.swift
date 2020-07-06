//
//  TagCollectionView.swift
//  MusicPlayer
//
//  Created by Manuel on 29/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct TagCollectionView: View {

    let tags: [String]

    let onTagClicked: (String) -> Void

    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(alignment: .top) {
                ForEach(tags, id: \.self) { tag in
                    TagButton(tag, onTagClicked: self.onTagClicked)
                }
            }
        }
    }
}

struct TagButton: View {

    let text: String

    let onTagClicked: (String) -> Void

    init(_ text: String, onTagClicked: @escaping (String) -> Void) {
        self.text = text
        self.onTagClicked = onTagClicked
    }

    var body: some View {
        Button(action: {
            self.onTagClicked(self.text)
        }) {
            HStack {
                Text(text)
                    .fontWeight(.light)
                    .frame(height: 8)
            }
        }
        .buttonStyle(PlainButtonStyle())
        .foregroundColor(.gray)
        .lineLimit(1)
        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
        )
            .padding(2)
    }
}

//
//  RoundedButton.swift
//  MusicPlayer
//
//  Created by Manuel on 29/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct RoundedButton: View {

    let text: String

    let imageName: String?

    let action: () -> Void

    init(_ text: String, imageName: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
        self.imageName = imageName
    }

    var body: some View {
        Button(action: action) {
            HStack {
                Image(imageName != nil ? imageName! : "")
                    .renderingMode(.template)
                    .resizable()
                    .font(.title)
                    .background(Color.clear)
                    .aspectRatio(contentMode: .fit)
                    .padding([.top, .bottom, .leading], 8)
                Text(text)
                    .font(.subheadline)
                    .padding([.top, .bottom], 6)
            }
        }
        .buttonStyle(PlainButtonStyle())
        .foregroundColor(.gray)
        .lineLimit(1)
        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.gray, lineWidth: 1)
        )
            .padding(2)
            .frame(height: 16)
    }
}


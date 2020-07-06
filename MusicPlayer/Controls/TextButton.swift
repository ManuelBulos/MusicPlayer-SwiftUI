//
//  TextButton.swift
//  MusicPlayer
//
//  Created by Manuel on 29/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct TextButton: View {

    let text: String

    let action: () -> Void

    init(_ text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(text)
                .font(.subheadline)
                .foregroundColor(Color.accent)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

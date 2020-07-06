//
//  HeaderText.swift
//  MusicPlayer
//
//  Created by Manuel on 29/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct HeaderText: View {

    let text: String

    init(_ text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.black)
    }
}

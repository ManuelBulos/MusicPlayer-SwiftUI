//
//  RoundedImage.swift
//  MusicPlayer
//
//  Created by Manuel on 29/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct RoundedImage: View {

    let url: URL?

    var body: some View {
        KFImage(url)
            .resizable()
            .frame(width: 200, height: 200)
            .cornerRadius(8)
            .shadow(radius: 16)
            .padding()
    }
}

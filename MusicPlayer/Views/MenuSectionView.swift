//
//  MenuSectionView.swift
//  MusicPlayer
//
//  Created by Manuel on 16/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct MenuSectionView: View {

    var section: MenuSection

    var body: some View {
            VStack(alignment: .leading) {
                Text(section.title)
                    .frame(height: 38)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .opacity(0.7)
                ForEach(section.items) { item in
                    MenuItemView(item: item)
                        .frame(height:24)
                        Spacer()
                }
            }
    }
}

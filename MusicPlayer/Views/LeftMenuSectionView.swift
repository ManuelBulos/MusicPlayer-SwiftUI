//
//  LeftMenuSectionView.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct SectionView: View {

    var section: MenuSection

    var body: some View {
        VStack(alignment: .leading) {
            Text(section.title)
                .frame(height: 42)
                .font(.subheadline)
                .opacity(0.7)
            ForEach(section.items) { item in
                LeftMenuItemView(item: item)
                .frame(width: 150, height: 28, alignment: .leading)
            }
        }
    }
}

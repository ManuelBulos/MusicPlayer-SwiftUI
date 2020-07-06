//
//  LeftMenuSectionView.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct LeftMenuSectionView: View {

    var section: MenuSection

    var body: some View {
        VStack(alignment: .leading) {
            Text(section.title)
            Spacer()
            ForEach(0..<section.items.count) { index in
                LeftMenuItem(item: self.section.items[index])
                Spacer()
            }
        }
        .padding()
    }
}

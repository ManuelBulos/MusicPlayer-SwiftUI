//
//  SideMenuView.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct SideMenuView: View {

    var sections: [MenuSection] = MenuSection.data

    var body: some View {
        VStack(alignment: .leading) {
            List(sections) { section in
                MenuSectionView(section: section)
            }
            .listStyle(SidebarListStyle())
        }
        .frame(width: 224)
        .padding(.top, 4)
    }
}

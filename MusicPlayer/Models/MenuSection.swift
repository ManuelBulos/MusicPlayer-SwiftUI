//
//  MenuSection.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import Foundation

struct MenuSection: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let items: [MenuItem]

    static var data =
        [MenuSection(title: "LIBRARY", items: MenuItem.libraryData),
         MenuSection(title: "DISCOVER", items: MenuItem.discoverData),
         MenuSection(title: "STORE", items: MenuItem.storeData)]
}

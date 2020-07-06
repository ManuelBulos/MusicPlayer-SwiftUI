//
//  MenuState.swift
//  MusicPlayer
//
//  Created by Manuel on 16/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

class MenuState: ObservableObject {
    @Published var selectedItem: MenuItem = .songs
}

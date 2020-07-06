//
//  MainView.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject var menuState: MenuState

    var url = "https://images.unsplash.com/photo-1524419986249-348e8fa6ad4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"

    var body: some View {
        HStack {
            SideMenuView()
            VStack {
                SearchView()
//                NavigationBar(title: "Back")
                Spacer()
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

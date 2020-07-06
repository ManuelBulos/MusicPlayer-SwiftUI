//
//  NavigationBar.swift
//  MusicPlayer
//
//  Created by Manuel on 28/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {

    let title: String

    var body: some View {
        Button(action: {
            print("Back")
        }) {
            HStack {
                Image("back")
                    .renderingMode(.original)
                    .resizable()
                    .font(.title)
                    .background(Color.clear)
                    .frame(width: 16, height: 16)
                    .aspectRatio(contentMode: .fit)
                    .padding([.top, .bottom], 16)
                Text(title)
                    .font(.headline)
                    .background(Color.clear)
                    .foregroundColor(Color.accent)
                    .edgesIgnoringSafeArea(.top)
                Spacer()
            }
            .frame(height: 44, alignment: .leading)
            .offset(x: 16, y: 0)
        }
        .buttonStyle(PlainButtonStyle())
        .background(Color.background)
    }
}

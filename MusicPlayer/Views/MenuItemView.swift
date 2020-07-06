//
//  MenuItemView.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct MenuItemView: View {

    @EnvironmentObject var menuState: MenuState

    var item: MenuItem

    var isSelected: Bool {
        self.menuState.selectedItem == self.item
    }

    var foregroundColor: Color {
        if self.menuState.selectedItem == self.item {
            return .accent
        } else {
            return .white
        }
    }

    let backgroundColor = Color.black.opacity(0.3)

    var body: some View {
        Button(action: {
            self.menuState.selectedItem = self.item
        }) {
            if isSelected {
                buttonContent.background(backgroundColor)
            } else {
                buttonContent.background(VisualEffectView())
            }
        }
        .cornerRadius(4)
        .buttonStyle(PlainButtonStyle())
        .foregroundColor(foregroundColor)
    }

    var buttonContent: some View {
        HStack {
            Image(item.icon)
                .renderingMode(.template)
                .resizable()
                .font(.title)
                .background(Color.clear)
                .aspectRatio(contentMode: .fit)
                .padding([.top, .bottom, .leading], 8)
            Text(item.title)
                .font(.subheadline)
                .padding([.top, .bottom], 6)
        }
        .frame(minWidth: 200, maxWidth: .infinity, alignment: .leading)
    }
}


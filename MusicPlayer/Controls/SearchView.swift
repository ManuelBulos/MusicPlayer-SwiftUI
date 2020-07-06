//
//  SearchView.swift
//  MusicPlayer
//
//  Created by Manuel on 28/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import SwiftUI

struct SearchView: View {

    @State var searchString: String = ""

    @State private var items: [String] = Array(0...24).map { "Item \($0)" }

    private var results: [String] {
        items.filter({$0.lowercased().contains(searchString.lowercased())})
    }

    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                Image("search")
                    .renderingMode(.original)
                    .resizable()
                    .font(.title)
                    .background(Color.clear)
                    .frame(width: 20, height: 20)
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading, .top, .bottom], 16)
                ZStack(alignment: .leading) {
                    if searchString.isEmpty {
                        Text("Search by artist, podcast, movies, etc.")
                            .foregroundColor(Color.gray)
                    }
                    TextField("", text: $searchString)
                        .textFieldStyle(PlainTextFieldStyle())
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.clear, lineWidth: 0))
                        .foregroundColor(Color.gray)
                }
            }
        }
        .frame(height: 74)
        .background(Color.white)
    }
}

struct ResultListView: View {

    let results: [String]

    var body: some View {
        List {
            ForEach(results, id: \.self) { item in
                Text(item)
            }
        }
        .frame(height: results.count > 0 ? 250 : 0)
    }
}

extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get { .none }
        set { }
    }
}

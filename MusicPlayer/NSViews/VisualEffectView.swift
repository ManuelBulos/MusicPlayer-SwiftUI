//
//  VisualEffectView.swift
//  MusicPlayer
//
//  Created by Manuel on 28/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import AppKit
import SwiftUI

struct VisualEffectViewRepresentation: NSViewRepresentable {
    typealias NSViewType = NSView

    func makeNSView(context: NSViewRepresentableContext<VisualEffectViewRepresentation>) -> NSView {
        let visualEffect = NSVisualEffectView()
        visualEffect.blendingMode = .behindWindow
        visualEffect.state = .active
        visualEffect.material = .dark
        return visualEffect
    }

    func updateNSView(_ nsView: NSView, context: NSViewRepresentableContext<VisualEffectViewRepresentation>) {}
}

struct VisualEffectView: View {
    var body: some View {
        VisualEffectViewRepresentation()
    }
}

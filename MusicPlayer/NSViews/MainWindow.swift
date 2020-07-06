//
//  MainWindow.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import AppKit
import SwiftUI

class MainWindow: NSWindow {

    var mainView: NSView?

    private lazy var visualEffectView: NSVisualEffectView = {
        let visualEffect = NSVisualEffectView()
        visualEffect.frame = frame
        visualEffect.blendingMode = .behindWindow
        visualEffect.state = .active
        visualEffect.material = .dark
        return visualEffect
    }()

    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: flag)
        isOpaque = false

        contentView = visualEffectView

        let menuState = MenuState()

        mainView = NSHostingView(rootView: MainView().environmentObject(menuState))

        visualEffectView.addSubview(mainView!)

        mainView?.frame = visualEffectView.frame

        titleVisibility = .hidden

        titlebarAppearsTransparent = true

        styleMask.insert(.fullSizeContentView)
    }

    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        mainView?.frame = visualEffectView.frame
    }
}

//
//  AppDelegate.swift
//  MusicPlayer
//
//  Created by Manuel on 15/03/20.
//  Copyright © 2020 manuelbulos. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the window
        window = MainWindow(
            contentRect: NSRect(x: 0, y: 0, width: 900, height: 900),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.makeKeyAndOrderFront(nil)
    }
}

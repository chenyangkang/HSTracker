//
//  CollectionFeedback.swift
//  HSTracker
//
//  Created by Martin BONNIN on 13/11/2019.
//  Copyright © 2019 HearthSim LLC. All rights reserved.
//

import Foundation
import TextAttributes

class CollectionFeedback: OverWindowController {    
    @IBOutlet weak var label: NSTextField!
    let attributes = TextAttributes()

    override func windowDidLoad() {
        super.windowDidLoad()

        self.window!.backgroundColor = NSColor.init(red: 0x48/255.0, green: 0x7E/255.0, blue: 0xAA/255.0, alpha: 1)

        label.stringValue = "initializing"

        attributes
            .font(NSFont(name: "Belwe Bd BT", size: 18))
            .foregroundColor(.white)
            .strokeWidth(-1.5)
            .strokeColor(.black)
            .alignment(.right)
    }
    
    func setMessage(message: String) {
        self.label.attributedStringValue = NSAttributedString(string: message, attributes: attributes)
    }
}
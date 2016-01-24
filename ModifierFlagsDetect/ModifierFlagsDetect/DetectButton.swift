//
//  DetectButton.swift
//  ModifierFlagsDetect
//
//  Created by Tomohiro Kumagai on 1/24/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

class DetectButton: NSButton {
	
	override func flagsChanged(theEvent: NSEvent) {
		
		super.flagsChanged(theEvent)
		reportModifierFlags(theEvent, owner: self)
	}
}

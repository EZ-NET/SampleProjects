//
//  AppDelegate.swift
//  ModifierFlagsDetect
//
//  Created by Tomohiro Kumagai on 1/24/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

}

func reportModifierFlags(event: NSEvent, owner: Any) {
	
	let message = "\(owner.dynamicType): Modifier Flags = \(event.modifierFlags)"

	if let controller = NSApp.mainWindow?.contentViewController as? ViewController {
		
		controller.report(message)
	}
	else {
		
		print(message)
	}
}

extension NSEventModifierFlags : CustomStringConvertible {
	
    public var description: String {

		var results: [String] = []
		
		if contains(.AlphaShiftKeyMask) {
			
			results.append("AlphaShift")
		}
		
		if contains(.ShiftKeyMask) {
			
			results.append("Shift")
		}
		
		if contains(.ControlKeyMask) {
			
			results.append("Control")
		}
		
		if contains(.AlternateKeyMask) {
			
			results.append("Alternate")
		}
		
		if contains(.CommandKeyMask) {
			
			results.append("Command")
		}
		
		if contains(.NumericPadKeyMask) {
			
			results.append("NumericPad")
		}
		
		if contains(.HelpKeyMask) {
			
			results.append("Help")
		}
		
		if contains(.FunctionKeyMask) {
			
			results.append("Function")
		}
		
		if contains(.DeviceIndependentModifierFlagsMask) {
			
			results.append("DeviceIndependent")
		}
		
		return results.joinWithSeparator(", ")
	}
}

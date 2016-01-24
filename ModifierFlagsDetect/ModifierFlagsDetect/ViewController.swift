//
//  ViewController.swift
//  ModifierFlagsDetect
//
//  Created by Tomohiro Kumagai on 1/24/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

extension NSTextField {
	
	func toggleEnabled() {
		
		self.enabled = !self.enabled
	}
}

class ViewController: NSViewController {
	
	@IBOutlet private var testTextField1: NSTextField!
	@IBOutlet private var testTextField2: NSTextField!
	@IBOutlet private var testView: NSView!
	@IBOutlet private var testButton: NSButton!
	
	@IBOutlet private var reportTextField: NSTextField! {
		
		didSet {
			
			self.reportTextField.stringValue = ""
		}
	}
	
	@IBAction func toggleTextFieldEnabled(sender: AnyObject) {
		
		testTextField1.toggleEnabled()
		testTextField2.toggleEnabled()
	}
	
	func report(text: String) {
	
		reportTextField.stringValue = "\(NSDate()): \(text)\n\(reportTextField.stringValue)"
	}
	
	override func flagsChanged(theEvent: NSEvent) {
		
		super.flagsChanged(theEvent)
		reportModifierFlags(theEvent, owner: self)
	}
}


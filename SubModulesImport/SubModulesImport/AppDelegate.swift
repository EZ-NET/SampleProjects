//
//  AppDelegate.swift
//  SubModulesImport
//
//  Created by Tomohiro Kumagai on 1/27/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa
import ModuleA

// ModuleA が依存しているモジュールを、インポートなしで使えるようにしたい。
// import ModuleB

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	
	func applicationDidFinishLaunching(aNotification: NSNotification) {
		// Insert code here to initialize your application
		let module = StructA(StructB(10))
	}
	
	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}
	
	
}


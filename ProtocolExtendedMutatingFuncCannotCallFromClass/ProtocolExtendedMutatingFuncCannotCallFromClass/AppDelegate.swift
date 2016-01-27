//
//  AppDelegate.swift
//  ProtocolExtendedMutatingFuncCannotCallFromClass
//
//  Created by Tomohiro Kumagai on 1/27/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        
        var object = MyClass()

        // 外から使う場合、プロトコル拡張で実装された mutating func は var で宣言されたインスタンスに対しては、呼び出し可能。
        object.mutatingTest()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
}


//
//  SampleCode.swift
//  NSTextView.Event
//
//  Created by Tomohiro Kumagai on 1/23/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

extension ViewController : NSTextViewDelegate {
    
    func textDidChange(notification: NSNotification) {
        
        let target = notification.object as! NSTextView
        let text = target.string!
        
        print("\(target.identifier!)'s text = \"\(text)\"")
    }
}
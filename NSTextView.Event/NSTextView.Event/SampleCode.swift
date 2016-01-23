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
        
        switch notification.object {
            
        case let textView as NSTextView where textView === self.targetTextView1:
            print("Left (\(textView.identifier!)) Changed, Text = \(textView.string!)")
            
        case let textView as NSTextView where textView === self.targetTextView2:
            print("Right (\(textView.identifier!)) Changed, Text = \(textView.string!)")
            
        default:
            fatalError()
        }
    }
}
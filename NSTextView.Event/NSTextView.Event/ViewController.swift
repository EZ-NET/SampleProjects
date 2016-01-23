//
//  ViewController.swift
//  NSTextView.Event
//
//  Created by Tomohiro Kumagai on 1/23/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet private(set) var targetTextView1: NSTextView!
    @IBOutlet private(set) var targetIdentifierLabel1: NSTextField!
    @IBOutlet private(set) var targetTextView2: NSTextView!
    @IBOutlet private(set) var targetIdentifierLabel2: NSTextField!
    
    @IBOutlet private var outputLabel: NSTextField! {
        
        didSet {
            self.outputLabel.stringValue = ""
        }
    }
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        self.targetIdentifierLabel1.stringValue = targetTextView1.identifier!
        self.targetIdentifierLabel2.stringValue = targetTextView2.identifier!
    }
    
    func print(output: String) {
        
        self.outputLabel.stringValue = output
    }
}



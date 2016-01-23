//
//  ViewController.swift
//  NSTextView.Event
//
//  Created by Tomohiro Kumagai on 1/23/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet private var targetTextView: NSTextView!
    @IBOutlet private var targetIdentifierLabel: NSTextField!
    
    @IBOutlet private var outputLabel: NSTextField! {
        
        didSet {
            self.outputLabel.stringValue = ""
        }
    }
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        self.targetIdentifierLabel.stringValue = targetTextView.identifier!
    }
    
    func print(output: String) {
        
        self.outputLabel.stringValue = output
    }
}



//
//  Protocol.swift
//  BindingsWithProtocol
//
//  Created by Tomohiro Kumagai on 1/23/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Cocoa

// When use @objc, raise segmentation fault.
@objc protocol MyProtocol {
    
    var isOK: Bool { get }
}

extension MyProtocol {
    
    var isOK: Bool {
        
        return true
    }
}

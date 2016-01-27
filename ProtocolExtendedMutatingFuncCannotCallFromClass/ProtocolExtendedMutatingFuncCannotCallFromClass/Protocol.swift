//
//  Protocol.swift
//  ProtocolExtendedMutatingFuncCannotCallFromClass
//
//  Created by Tomohiro Kumagai on 1/27/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

protocol MyProtocol {
    
    mutating func mutatingTestForNeedImplement()
}

extension MyProtocol {
    
    func nonmutatingTest() {
        
    }
    
    mutating func mutatingTest() {
        
    }
}
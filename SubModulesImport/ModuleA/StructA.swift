//
//  StructA.swift
//  SubModulesImport
//
//  Created by Tomohiro Kumagai on 1/27/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import ModuleB

public struct StructA {
	
	public var value: StructB
	
	public init(_ value: StructB) {
		
		self.value = value
	}
}

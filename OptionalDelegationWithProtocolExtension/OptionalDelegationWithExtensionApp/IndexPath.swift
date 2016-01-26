//
//  IndexPath.swift
//  OptionalDelegationWithProtocolExtension
//
//  Created by Tomohiro Kumagai on 1/26/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import Foundation

extension NSIndexPath {
	
	public override var description: String {
		
		return "Section=\(self.section),Row=\(self.row)"
	}
}

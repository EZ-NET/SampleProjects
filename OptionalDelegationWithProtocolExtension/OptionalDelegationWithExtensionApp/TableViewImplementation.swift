//
//  TableViewImplementation.swift
//  OptionalDelegationWithProtocolExtension
//
//  Created by Tomohiro Kumagai on 1/26/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import UIKit

@objc protocol TableViewExtension : UITableViewDelegate {
	
	func displayText(text: String)
	
	// MARK: Segmentation fault will raise when define this.
//	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
}

extension TableViewExtension {
 
	// MARK: It is not called by UITableView.
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
		displayText("Selected: \(indexPath)")
	}
}
//
//  ViewController.swift
//  OptionalDelegationWithExtensionApp
//
//  Created by Tomohiro Kumagai on 1/26/16.
//  Copyright © 2016 EasyStyle G.K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var statusLabel: UILabel! {
		
		didSet {
			
			displayText("")
		}
	}
	
	func displayText(text: String) {
		
		statusLabel.text = text
	}
}

extension ViewController : UITableViewDataSource {
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return 3
	}
	
	func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		
		return "Section: \(section)"
	}
	
	func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		
		return 10
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
		
		cell.textLabel!.text = "\(indexPath)"
		
		return cell
	}
}

extension ViewController : TableViewExtension {
	
}

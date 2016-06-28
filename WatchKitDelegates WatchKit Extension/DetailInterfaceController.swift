//
//  DetailInterfaceController.swift
//  WatchKitDelegates
//
//  Created by Viktor Kucera on 28/06/16.
//  Copyright © 2016 vk. All rights reserved.
//

import WatchKit
import Foundation

protocol DetailICDelegate {
    func didClick(output: String)
}

class DetailInterfaceController: WKInterfaceController {
    
    var delegate: DetailICDelegate?
    @IBOutlet var detailBtn: WKInterfaceButton!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let aDelegate = context as? InterfaceController {
            delegate = aDelegate
        } else {
            print("delegate not loaded")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func detailBtnTap() {
        delegate?.didClick("changed")
        popController()
    }
}

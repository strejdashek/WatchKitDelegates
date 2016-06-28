//
//  InterfaceController.swift
//  WatchKitDelegates WatchKit Extension
//
//  Created by Viktor Kucera on 28/06/16.
//  Copyright © 2016 vk. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var testBtn: WKInterfaceButton!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        return self
    }
    
    
}

extension InterfaceController: DetailICDelegate {
    
    func didClick(output: String) {
        print(output)
        testBtn.setTitle(output)
    }
}

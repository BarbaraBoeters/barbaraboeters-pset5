//
//  DismissSegue.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 01-12-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import UIKit

//class DismissSegue: UIStoryboardSegue {

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    
    override func perform() {
        if let controller = source.presentingViewController {
            controller.dismiss(animated: true, completion: nil)
        }
    }
}

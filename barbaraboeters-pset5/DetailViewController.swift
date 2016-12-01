//
//  DetailViewController.swift
//  barbaraboeters-pset5
//
//  Created by Barbara Boeters on 28-11-16.
//  Copyright © 2016 Barbara Boeters. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    // private let db = DatabaseHelper()

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Task = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.notes
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Task? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}


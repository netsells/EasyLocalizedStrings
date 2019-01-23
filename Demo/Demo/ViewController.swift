//
//  ViewController.swift
//  Demo
//
//  Created by Alex on 23/01/2019.
//  Copyright © 2019 Tucanae. All rights reserved.
//
 
import UIKit
import EasyLocalizedStrings

class ViewController: UIViewController {
    
    @IBOutlet var segmentedControl: LocalizedSegmentedControl!
    @IBOutlet var messageLabel: LocalizedLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.localizedKeys = [0: "seg1", 1: "seg2"]
    }

    @IBAction func changeTitle(_ sender: Any) {
        messageLabel.text = String(format: NSLocalizedString("secondMessage", comment: ""), "iOS")
        segmentedControl.selectedSegmentIndex = 1
    }

    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            messageLabel.localizedKey = "mainMessage"
        } else {
            messageLabel.text = String(format: NSLocalizedString("secondMessage", comment: ""), "iOS")
        }
    }
}


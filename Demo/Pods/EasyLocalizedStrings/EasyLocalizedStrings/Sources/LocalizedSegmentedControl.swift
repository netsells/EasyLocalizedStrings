//
//  LocalizedSegmentedControl.swift
//  EasyLocalizedStrings
//
//  Created by Alex on 23/01/2019.
//  Copyright © 2019 Tucanae. All rights reserved.
//

import UIKit

public class LocalizedSegmentedControl: UISegmentedControl {

    public var localizedKeys = [Int: String]() {
        didSet {
            for (index, key) in localizedKeys {
                setTitle(NSLocalizedString(key, comment: ""), forSegmentAt: index)
            }
        }
    }

}

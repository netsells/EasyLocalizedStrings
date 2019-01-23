//
//  LocalizedTextField.swift
//  EasyLocalizedStrings
//
//  Created by Alex on 23/01/2019.
//  Copyright © 2019 Tucanae. All rights reserved.
//

import UIKit

public class LocalizedTextField: UITextField, Localizable {

    @IBInspectable public var localizedKey: String? {
        didSet {
            guard let key = localizedKey else { return }
            placeholder = NSLocalizedString(key, comment: "")
        }
    }

}

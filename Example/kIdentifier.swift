//
//  kId.swift
//  Example
//
//  Created by Raj Dhakate on 25/05/22.
//

import UIKit

extension UICollectionReusableView {
    static var kIdentifier: String {
        String(describing: self)
    }
}

extension UITableViewCell {
    static var kIdentifier: String {
        String(describing: self)
    }
}

extension UITableViewHeaderFooterView {
    static var kIdentifier: String {
        String(describing: self)
    }
}

extension UIViewController {
    static var kIdentifier: String {
        String(describing: self)
    }
}

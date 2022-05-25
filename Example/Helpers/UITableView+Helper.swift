//
//  UITableView+Helper.swift
//  Example
//
//  Created by Raj Dhakate on 25/05/22.
//

import UIKit

extension UITableView {
    func registerCell(id identifier: String) {
        register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
}

extension UITableView {
    func getCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        dequeueReusableCell(withIdentifier: T.kIdentifier, for: indexPath) as! T
    }
}

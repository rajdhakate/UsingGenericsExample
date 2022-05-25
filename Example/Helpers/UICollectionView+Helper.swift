//
//  UICollectionView+Helper.swift
//  Example
//
//  Created by Raj Dhakate on 25/05/22.
//

import UIKit

extension UICollectionView {
    func registerCell(id identifier: String) {
        register(UINib(nibName: identifier, bundle: nil), forCellWithReuseIdentifier: identifier)
    }
    
    func registerHeader(id identifier: String) {
        self.register(UINib(nibName: identifier, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
    }
    
    func registerFooter(id identifier: String) {
        self.register(UINib(nibName: identifier, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
    }
}

extension UICollectionView {
    func getCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: T.kIdentifier, for: indexPath) as! T
    }
    
    func getReusableView<T: UICollectionReusableView>(of kind: String, for indexPath: IndexPath) -> T {
        dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: T.kIdentifier, for: indexPath) as! T
    }
}

//
//  UICollectioView.swift
//  ottonova
//
//  Created by atikhonov on 13/02/2019.
//  Copyright © 2019 atikhonov. All rights reserved.
//

import UIKit

extension UICollectionView {
    func dequeueReusableCell<T: UICollectionViewCell>(withCell cellType: T.Type, for indexPath: IndexPath) -> T {
        let identifier = cellType.cellIdentifier
        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? T else {
            fatalError("\(identifier) isn't registered")
        }
        return cell
    }
}

extension UICollectionView {
    func dequeueReusableCell<T: ATCollectionViewCellModel>(model: T, indexPath: IndexPath) -> T.CellType {
        let cellIdentifier = T.CellType.cellIdentifier
        let cell = dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        if let cell = cell as? T.CellType {
            model.configure(cell: cell, at: indexPath, in: self)
            return cell
        } else {
            let cellTypeClass = String(describing: T.CellType.self)
            preconditionFailure("Cannot cast \(cell) to \(cellTypeClass) in dequeueReusableCell")
        }
        return T.CellType(frame: .zero)
    }

    func register<T: ATTableViewCellModel>(nibModels: [T.Type]) {
        for model in nibModels {
            let identifier = String(describing: model.cellType)
            let nib = UINib(nibName: identifier, bundle: nil)
            register(nib, forCellWithReuseIdentifier: identifier)
        }
    }

}

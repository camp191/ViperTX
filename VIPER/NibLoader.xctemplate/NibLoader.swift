//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ All rights reserved.
//

import UIKit

struct CouldNotLoadNib: Error {}

protocol NibLoader {
    associatedtype NibRootType
    static func loadFromNib() throws -> NibRootType
}

extension NibLoader where NibRootType: UIView {
    static func loadFromNib() throws -> NibRootType {
        let nibName = String(describing: self)
        let bundle = Bundle(for: NibRootType.self)
        guard let element = bundle.loadNibNamed(nibName, owner: nibName, options: nil)?.first as? NibRootType else {
            throw CouldNotLoadNib()
        }
        return element
    }
}

extension NibLoader where NibRootType: UIViewController {
    static func loadFromNib() throws -> NibRootType {
        let nibName = String(describing: self)
        let bundle = Bundle(for: NibRootType.self)
        let viewController = NibRootType(nibName: nibName, bundle: bundle)
        return viewController
    }
}

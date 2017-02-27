//
//  BasePresenter.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

public protocol BasePresenter: class {
    func configureModule()

}


private var presenterKey: UInt8 = 0

public extension UIViewController {
        
    var basePresenter: BasePresenter? {
        set(value) {
            objc_setAssociatedObject(self, &presenterKey, value, .OBJC_ASSOCIATION_RETAIN)
        }
        get {
            return objc_getAssociatedObject(self, &presenterKey) as? BasePresenter
        }
    }
}

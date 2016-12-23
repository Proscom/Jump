//
//  ModuleRules.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

typealias ModuleRulesBlock = (_ presenter: BasePresenter?) -> Void

protocol Moduling {
    func perform(moduleInput: @escaping ModuleRulesBlock)
}

class ModuleRules: Moduling {
    
    private(set) var presenter: BasePresenter?
    
    init(presenter: BasePresenter?) {
        self.presenter = presenter
    }
    
    func perform(moduleInput: @escaping ModuleRulesBlock) {
        moduleInput(self.presenter)
    }
}

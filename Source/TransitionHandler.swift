//
//  TransitionHandler.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

public typealias ModuleTransitionBlock = (_ sourceModuleTransitionHandler: TransitionHandler, _ destinationModuleTransitionHandler: TransitionHandler) -> Void

public protocol TransitionHandler: class {
    
    func openModule(using factory: Factory, with transitionBlock: ModuleTransitionBlock!) -> Moduling
}


extension UIViewController: TransitionHandler {
    
    public func openModule(using factory: Factory, with transitionBlock: ModuleTransitionBlock!) -> Moduling {
        let sourceModuleTransitionHandler = self
        let destinationModuleTransitionHandler = factory.instantiateModuleTransitionHandler() as! UIViewController
        
        transitionBlock(sourceModuleTransitionHandler, destinationModuleTransitionHandler)
        
        let rules = ModuleRules(presenter: destinationModuleTransitionHandler.basePresenter)
        
        return rules
    }
}

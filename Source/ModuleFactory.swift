//
//  ModuleFactory.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

protocol Factory {
    func instantiateModuleTransitionHandler() -> TransitionHandler
}


class ModuleFactory: Factory {
    
    private(set) var storyboard: UIStoryboard!
    private(set) var identifier: String!
    
    init(storyboard: UIStoryboard, identifier: String) {
        self.storyboard = storyboard
        self.identifier = identifier
    }
    
    internal func instantiateModuleTransitionHandler() -> TransitionHandler {
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}

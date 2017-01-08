//
//  ModuleFactory.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

public protocol Factory {
    func instantiateModuleTransitionHandler() -> TransitionHandler
}


public class ModuleFactory: Factory {
    
    private(set) var storyboard: UIStoryboard!
    private(set) var identifier: String!
    
    public init(storyboard: UIStoryboard, identifier: String) {
        self.storyboard = storyboard
        self.identifier = identifier
    }
    
    public func instantiateModuleTransitionHandler() -> TransitionHandler {
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}

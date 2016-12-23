//
//  ExampleTwoConfigurator.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

class ExampleTwoConfigurator: DependencyConfigurator {
    typealias View = ExampleTwoViewController
    typealias Presenter = ExampleTwoPresenter
    typealias Router = ExampleTwoRouter
    
    static let exampleTwoFactory: ModuleFactory = {
        return ModuleFactory(storyboard: UIStoryboard(name: "Main", bundle: Bundle.main),
                             identifier: "ExampleTwoViewController")
    }()
    class func inject(_ view: View, _ presenter: Presenter, _ router: Router) {
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        
        router.transitionHandler = view        
    }
}

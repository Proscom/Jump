//
//  ExampleOneConfigurator.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

class ExampleOneConfigurator: DependencyConfigurator {
    typealias View = ExampleOneViewController
    typealias Presenter = ExampleOnePresenter
    typealias Router = ExampleOneRouter
    
    class func inject(_ view: View, _ presenter: Presenter, _ router: Router) {
        
        router.transitionHandler = view

        view.presenter = presenter

        presenter.view = view
        presenter.router = router
        
        //router
    }
}

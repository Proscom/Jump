//
//  ExampleOnePresenter.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

class ExampleOnePresenter: BasePresenter {
    var view: ExampleOneViewInput!
    var router: ExampleOneRouterInput!

    func configureModule() {
        
    }
}

extension ExampleOnePresenter: ExampleOneViewOutput {
    
    func viewIsReady() {
        view.setupInitialState()
    }
    
    func showExampleTwo() {
        print(router)
        router.showExampleTwo()
    }
}

//
//  ExampleTwoPresenter.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

class ExampleTwoPresenter: BasePresenter {
    weak var view: ExampleTwoViewInput!
    weak var router: ExampleTwoRouterInput!
    
    func configureModule() {
        print("i am confugured")
    }
}

extension ExampleTwoPresenter: ExampleTwoViewOutput {
    
    func viewIsReady() {
        view.setupInitialState()
    }
}

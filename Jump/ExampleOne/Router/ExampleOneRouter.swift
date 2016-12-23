//
//  ExampleOneRouter.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

class ExampleOneRouter: ExampleOneRouterInput {
    var transitionHandler: TransitionHandler!
    var exampleTwo = ExampleTwoConfigurator.exampleTwoFactory
    
    func showExampleTwo() {
        transitionHandler.openModule(using: exampleTwo) { (source: TransitionHandler, destanation: TransitionHandler) in
            let sourceViewController: UIViewController = source as! UIViewController
            let destanationViewController: UIViewController = destanation as! UIViewController
            let navigationController = sourceViewController.navigationController
            navigationController?.pushViewController(destanationViewController, animated: true)
            }.perform { (presenter: BasePresenter?) in
                presenter?.configureModule()
        }
    }
}

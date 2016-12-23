//
//  ExampleTwoModuleInitializer.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

class ExampleTwoModuleInitializer: NSObject {
    
    @IBOutlet weak var exampleTwoViewController: ExampleTwoViewController!
    
    override func awakeFromNib() {
        let presenter = ExampleTwoPresenter()
        let router = ExampleTwoRouter()
        ExampleTwoConfigurator.inject(exampleTwoViewController, presenter, router)
    }
}

//
//  File.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

class ExampleOneModuleInitializer: NSObject {
    
    @IBOutlet weak var exampleOneViewController: ExampleOneViewController!

    override func awakeFromNib() {
        let presenter = ExampleOnePresenter()
        let router = ExampleOneRouter()
        ExampleOneConfigurator.inject(exampleOneViewController, presenter, router)
    }
}

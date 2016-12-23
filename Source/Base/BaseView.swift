//
//  BaseView.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

protocol BaseViewInput: class {
    func setupInitialState()
}

protocol BaseViewOutput: class {
    func viewIsReady()    
}

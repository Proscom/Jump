//
//  DependencyConfigurator.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import Foundation

protocol DependencyConfigurator {
    associatedtype View
    associatedtype Presenter
    associatedtype Router
    
    static func inject(_ view: View, _ presenter: Presenter, _ router: Router)
}

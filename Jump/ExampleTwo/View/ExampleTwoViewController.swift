//
//  ExampleTwoViewController.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

class ExampleTwoViewController: UIViewController {
    
    var presenter: ExampleTwoViewOutput! {
        get  {
            return basePresenter as! ExampleTwoViewOutput
        }
        set {
            basePresenter = newValue as! BasePresenter
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
        //presenter
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ExampleTwoViewController: ExampleTwoViewInput {
    
    func setupInitialState() {
        
    }
}


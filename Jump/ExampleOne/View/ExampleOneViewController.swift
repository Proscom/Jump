//
//  ViewController.swift
//  Jump
//
//  Created by MAXIM KOLESNIK on 23.12.16.
//  Copyright © 2016 Proscom. All rights reserved.
//

import UIKit

class ExampleOneViewController: UIViewController {

    var presenter: ExampleOneViewOutput! {
        get  {
            return basePresenter as! ExampleOneViewOutput
        }
        set {
            basePresenter = newValue as! BasePresenter
        }
    }

    @IBAction func showTwo(_ sender: UIButton) {
        presenter.showExampleTwo()
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

extension ExampleOneViewController: ExampleOneViewInput {
    
    func setupInitialState() {
        
    }
}


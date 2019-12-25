//
//  ViewController.swift
//  MVVMtest
//
//  Created by Mykhailo Bondarenko on 25.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var coordinatorModel: ViewControllerCoordinatorModel!
    
    var appearenceModel: AppearenceModelType! {
        didSet {
            titleLabel.textColor = appearenceModel.titleColor
            view.backgroundColor = appearenceModel.backgroundColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coordinatorModel = ViewControllerCoordinatorModel(coordinatorDidUpdateAppearenceModelBlock: { (model) in
            self.appearenceModel = model
        })
        coordinatorModel.selectSegmentIndex(index: 0)
        
    }

    @IBAction func segmentedControlValueChanged(sender: UISegmentedControl) {
        coordinatorModel.selectSegmentIndex(index: sender.selectedSegmentIndex)
    }

}


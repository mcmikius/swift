//
//  ViewControllerCoordinatorModel.swift
//  MVVMtest
//
//  Created by Mykhailo Bondarenko on 25.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

import Foundation
import UIKit

struct ViewControllerCoordinatorModel {
    
    private(set) var coordinatorDidUpdateAppearenceModelBlock: (_ model: AppearenceModelType) -> ()
    
    init(coordinatorDidUpdateAppearenceModelBlock: @escaping (_ model: AppearenceModelType) -> ()) {
        self.coordinatorDidUpdateAppearenceModelBlock = coordinatorDidUpdateAppearenceModelBlock
    }
    
    func selectSegmentIndex(index: Int) {
        switch index {
        case 0:
            coordinatorDidUpdateAppearenceModelBlock(GreenModel())
        default:
            coordinatorDidUpdateAppearenceModelBlock(NightModel())
        }
    }
}

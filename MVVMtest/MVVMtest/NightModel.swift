//
//  NightModel.swift
//  MVVMtest
//
//  Created by Mykhailo Bondarenko on 25.12.2019.
//  Copyright © 2019 Mykhailo Bondarenko. All rights reserved.
//

import Foundation
import UIKit

struct NightModel: AppearenceModelType {
    
    var backgroundColor: UIColor {
        return .black
    }
    
    var titleColor: UIColor {
        return .white
    }
}

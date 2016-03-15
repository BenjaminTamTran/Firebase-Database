//
//  Utility.swift
//  Firebase Database
//
//  Created by Tran Huu Tam on 3/15/16.
//  Copyright © 2016 The Simple Studio. All rights reserved.
//

import Foundation
import UIKit

class Utility {
    class func borderRadiusView(radius : CGFloat, view : UIView) {
        view.layer.cornerRadius = radius
        view.layer.masksToBounds = true
    }
}
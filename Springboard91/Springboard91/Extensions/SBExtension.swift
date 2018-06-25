//
//  SBExtension.swift
//  Springboard91
//
//  Created by Vinod pandey on 19/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import Foundation
import UIKit

extension UIView
{
    func  setCornorRadius(_ radius:CGFloat, withBorder borderwidth:CGFloat = 0.0, color:UIColor  = UIColor.lightGray) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = borderwidth
        self.layer.borderColor = color.cgColor
        self.layer.masksToBounds = true
    }
}

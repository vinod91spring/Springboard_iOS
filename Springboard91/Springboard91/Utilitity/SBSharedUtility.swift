//
//  SBSharedUtility.swift
//  Springboard91
//
//  Created by Vinod pandey on 19/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import UIKit

class SBSharedUtility: NSObject {

    //MARK :- Variables
    static let sharedInstance = SBSharedUtility()
    
    //MARK: - Keyboard Functions
    func keyboardWillShow(_ notification: NSNotification, inView: UIView, percent: CGFloat) {
        if let info = notification.userInfo, let keyboardSize =  (info[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue, keyboardSize.height > 0 {
            inView.frame.origin.y = 0 - keyboardSize.height * percent
        } else {
            inView.frame.origin.y = 0 - 220 * percent
        }
    }
    
    func keyboardWillHide(_ notification: NSNotification, inView: UIView) {
        inView.frame.origin.y = 64 //After navgation header
    }
}

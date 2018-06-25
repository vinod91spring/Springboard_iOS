//
//  SBSharedUserDefault.swift
//  Springboard91
//
//  Created by Vinod pandey on 19/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import UIKit

class SBSharedUserDefault: NSObject {
    //MARK :- Variables
    static let sharedInstance = SBSharedUserDefault()

    func saveUserloginLtatus(status:Bool) {
        let defaults = UserDefaults.standard
        defaults.set(status, forKey: UserDefaultsKey.KEY_LOGGEDINUSER)
        defaults.synchronize()
    }
    func getUserloginLtatus() -> Bool {
        let defaults = UserDefaults.standard
       // let data: AnyObject? = defaults.boolForKey(forKey: UserDefaultsKey.KEY_LOGGEDINUSER) as AnyObject?
        let data: Bool? =  defaults.bool(forKey: UserDefaultsKey.KEY_LOGGEDINUSER)
        return data!
    }
    
}

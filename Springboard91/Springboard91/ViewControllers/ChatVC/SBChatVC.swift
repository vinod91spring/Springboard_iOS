//
//  SBChatVC.swift
//  Springboard91
//
//  Created by Vinod pandey on 19/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import UIKit

class SBChatVC: SBBaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configuration()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Configuration
    /**
     * Function use for Configuration
     * @param none
     * @return none
     **/
    func configuration() {
        self.title = "Welcome"
        self.addLeftMenuButton()
        self.addRightMenuButton()
    }
    
    override func leftmenuButtonPressed(_ button: UIButton) {
        self.view.endEditing(true)
        print("Left button pressed")
    }
    override func rightButtonPressed(_ button: UIButton) {
       self.view.endEditing(true)
        print("Right button pressed")
    }
    
}

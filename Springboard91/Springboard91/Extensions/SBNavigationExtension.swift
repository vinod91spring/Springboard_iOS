//
//  SBNavigationExtension.swift
//  Springboard91
//
//  Created by Vinod pandey on 19/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController
{
    // MARK: Add thee Bar on Navigation
    
    func addRightMenuButton() {
        if (self.navigationItem.rightBarButtonItem == nil) {
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named:"Menu-32"), style: UIBarButtonItemStyle.plain, target: self, action:#selector(UIViewController.rightButtonPressed(_:)));
            self.navigationItem.rightBarButtonItem!.tag = 100
        }
    }
    
    func addLeftMenuButton() {
        if (self.navigationItem.leftBarButtonItem == nil) {
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named:"Menu-32"), style: UIBarButtonItemStyle.plain, target: self, action:#selector(UIViewController.leftmenuButtonPressed(_:)));
            self.navigationItem.leftBarButtonItem!.tag = 101
        }
    }
    func hideBackButton() {
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
   
    @IBAction func leftmenuButtonPressed(_ button: UIButton) {
        
    }
    @IBAction func rightButtonPressed(_ button: UIButton) {
        
    }
    
    @objc func menuButtonPressed(_ button : UIBarButtonItem){
        self.view.endEditing(true)
       /* if(appDelegate.drawerController.openSide == MMDrawerSide.right || appDelegate.drawerController.openSide == MMDrawerSide.left){
            appDelegate.drawerController .closeDrawer(animated: true, completion: nil)
        }else{
            appDelegate.drawerController .open(MMDrawerSide.right, animated: true, completion: nil)
        }
        */
    }
}

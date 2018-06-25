//
//  SBNavigationController.swift
//  Springboard91
//
//  Created by Vinod pandey on 19/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import UIKit

class SBNavigationController: UINavigationController,UIGestureRecognizerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureNavigationUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // MARK: - Navigation
    func configureNavigationUI() {
        self.navigationBar.isExclusiveTouch = true
        self.navigationBar.isMultipleTouchEnabled = false
        self.navigationBar.isTranslucent = false;
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.barTintColor = UIColor.red
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white, NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 20)]

        if (self.responds(to: #selector(getter: UINavigationController.interactivePopGestureRecognizer))) {
            self.interactivePopGestureRecognizer!.delegate = self
            self.delegate = self
        }
        
        // Bar back button
        UINavigationBar.appearance().backIndicatorImage = UIImage(named: "BackButton")
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(named: "BackButton")
    }
   
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
    }

     // MARK: - Navigation Zesture
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)
    {
        //******* Enable the gesture again once the new controller is shown ******//
        viewController.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        
        if (self.responds(to: #selector(getter: UINavigationController.interactivePopGestureRecognizer)))
        {
            self.interactivePopGestureRecognizer!.isEnabled = false
        }
    }
    

}

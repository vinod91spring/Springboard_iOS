//
//  SBLoginVC.swift
//  Springboard91
//
//  Created by Vinod pandey on 18/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import UIKit

class SBLoginVC: SBBaseVC {

    @IBOutlet weak var viewSmallLogin: UIView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configurationUI()
        self.keyboardHandler()
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
    func configurationUI() {
        self.title = "Login"
        self.viewSmallLogin.setCornorRadius(9)
        self.btnLogin.setCornorRadius(9, withBorder: 1)
    }
    
    /**
     * Function use for Handle Keyboard
     * @param none
     * @return none
     **/
    func keyboardHandler() {
        //Add notification listener for keyboard
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    //MARK: - Keyboard Delegate Method
    @objc func keyboardWillShow(_ notification: NSNotification) {
        //Call function to move the view up
        SBSharedUtility.sharedInstance.keyboardWillShow(notification, inView: self.view, percent: 0.1)
        //Call function to move the view up
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    @objc func keyboardWillHide(_ notification: NSNotification) {
        //Call function to move the view back down
        SBSharedUtility.sharedInstance.keyboardWillHide(notification, inView: self.view)
        //Call function to move the view back down
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    //MARK: View Touch events
    /**
     * Function use to handle keyboard on touch event of view
     * @param none
     * @return none
     **/
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    //MARK: Button Action
    @IBAction func buttonLoginTapped(_ sender: Any) {
        SBSharedUserDefault.sharedInstance.saveUserloginLtatus(status: true)
       let SBChatVCObj = SBChatVC.init(nibName: "SBChatVC", bundle: nil)
        self.navigationController?.pushViewController(SBChatVCObj, animated: true)
    }
    

}

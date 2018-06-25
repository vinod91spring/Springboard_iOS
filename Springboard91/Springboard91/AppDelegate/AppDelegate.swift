//
//  AppDelegate.swift
//  Springboard91
//
//  Created by Vinod pandey on 18/06/18.
//  Copyright © 2018 Vinod pandey. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController : SBNavigationController! // Custom navigation controller


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.openLoginScreen()
        return true
    }
    
    /**
     * Function to use for Open Login screen
     * @param none
     * @return none
     **/
    func openLoginScreen()  {
        // Check Allocated Window or not
        if self.window == nil {
            // Allocate Window
            self.window = UIWindow(frame: UIScreen.main.bounds)
        }
        
        // Deallocate navigation controller if allocated
        if self.navigationController != nil{
            self.navigationController = nil
        }
        
        // Login Screen view Object
        let SBLoginVCObj = SBLoginVC.init(nibName: "SBLoginVC", bundle: nil)
        
        // Chat Screen view Object
        let SBChatVCObj = SBChatVC.init(nibName: "SBChatVC", bundle: nil)
        
        // Allocate navigation controller
        if SBSharedUserDefault.sharedInstance.getUserloginLtatus() {
          self.navigationController = SBNavigationController(rootViewController: SBChatVCObj)
        } else {
            self.navigationController = SBNavigationController(rootViewController: SBLoginVCObj)
        }
        
        // Hide Default navigation View.
        self.navigationController.isNavigationBarHidden = false
        
        // Custom navigation View Assign window root view controller.
        self.window?.rootViewController = self.navigationController
        self.window?.makeKeyAndVisible()
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Springboard91")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}


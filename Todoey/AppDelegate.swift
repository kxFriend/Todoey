//
//  AppDelegate.swift
//  Todoey
//
//  Created by Pavel on 02/07/2019.
//  Copyright © 2019 Pavel. All rights reserved.
//

import UIKit

import  RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //print (Realm.Configuration.defaultConfiguration.fileURL)
       
        do {
            _ = try Realm()
            
        } catch {
            print ("Error installing Realm: \(error)")
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print ("applicationDiDEnteredBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

 
    // MARK: - Core Data stack
    
   

}


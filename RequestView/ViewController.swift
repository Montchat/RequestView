//
//  ViewController.swift
//  RequestView
//
//  Created by Joe E. on 6/22/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func trigger(sender: AnyObject) {
        checkIfUserHasEnabledNotifications()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func checkIfUserHasEnabledNotifications() {
        
        if let userAcceptedPushNotifications = NSUserDefaults.standardUserDefaults().valueForKey("UserAcceptedPushNotifications") as? Bool {
            print("a")
            if userAcceptedPushNotifications == false {
                
                addRequestView(type: .Notification)
                
            } else if userAcceptedPushNotifications == true {
                print("userAcceptedPushNotifications \(userAcceptedPushNotifications)")
            }
            
        } else if NSUserDefaults.standardUserDefaults().valueForKey("UserAcceptedPushNotifications") == nil {
            print("b")
            
            addRequestView(type: .Notification)
            
            let userDefaults = NSUserDefaults.standardUserDefaults()
            
            userDefaults.setValue(false, forKey: "UserAcceptedPushNotifications")
            userDefaults.synchronize()
            
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        checkIfUserHasEnabledNotifications()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func addRequestView(type request:RequestView.Request) -> RequestView {
        
        let requestView = RequestView(request: request, frame: self.view.frame, withAnimationDuration: 0.33)
        view.addSubview(requestView)
        
        return requestView
        
    }
    
}


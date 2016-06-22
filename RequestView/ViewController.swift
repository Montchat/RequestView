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
        
        let request = "This app is more fun with notifications! Do you want to be alerted when a user likes your content?"
        
        addRequestView(request:request)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let request = "This app is more fun with notifications! Do you want to be alerted when a user likes your content?"
        
        addRequestView(request:request)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addRequestView(request request: String) -> RequestView {
        
        let requestView = RequestView(request: request, frame: self.view.frame, withAnimationDuration: 0.33)
        view.addSubview(requestView)
        
        return requestView
        
    }

}


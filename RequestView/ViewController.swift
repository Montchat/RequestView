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
        addRequestView(type: .Notification) 
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        addRequestView(type: .Notification)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addRequestView(type request:RequestView.Request) -> RequestView {
        
        let requestView = RequestView(request: request, frame: self.view.frame, withAnimationDuration: 0.33)
        view.addSubview(requestView)
        
        return requestView
        
    }

}


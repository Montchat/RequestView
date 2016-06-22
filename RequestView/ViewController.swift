//
//  ViewController.swift
//  RequestView
//
//  Created by Joe E. on 6/22/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let _ = RequestView(request: "this app is more fun with notifications. do you want to enable them to let you know when someone else likes your posts?", frame: self.view.frame, animationDuration: 0.33)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


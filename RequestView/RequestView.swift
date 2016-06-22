//
//  RequestView.swift
//  blipp
//
//  Created by Joe E. on 6/22/16.
//  Copyright © 2016 Montchat. All rights reserved.
//

import UIKit

class RequestView: UIView {
    
    typealias Request = String
    
    @IBOutlet weak var request: UILabel?
    
    @IBAction func yes(sender: AnyObject) {
        
        print("yes")
        
    }
    
    @IBAction func no(sender: AnyObject) {
        
        UIView.animateWithDuration(0.33, animations: { 
            self.alpha = 0
            }) { (Bool) in
                self.removeFromSuperview()
        }
        
    }
    
    init(request:Request, frame:CGRect, animationDuration: Double) {
//        self.request.text = request
        super.init(frame: frame)
        
//        NSBundle.mainBundle().loadNibNamed("RequestView", owner: self, options: nil)
        self.addSubview(self)
        
//        self.reque
        
        self.alpha = 0
        
        UIView.animateWithDuration(0.33) { 
            self.alpha = 1
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

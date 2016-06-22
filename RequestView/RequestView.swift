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
    
    let request: UILabel!
    
    let visualEffectView:UIVisualEffectView!
    
    let yes:UIButton!
    let no:UIButton!
    
    let cancel:UIButton!
    
    func yes(sender: AnyObject) { print("yes")
        UIView.animateWithDuration(0.33, animations: {
            self.alpha = 0
        }) { (Bool) in
            self.removeFromSuperview()
        }
        
    }
    
    func no(sender: AnyObject) {
        UIView.animateWithDuration(0.33, animations: { 
            self.alpha = 0
            }) { (Bool) in
                self.removeFromSuperview()
        }
        
    }
    
    init(request:Request, frame:CGRect, withAnimationDuration duration: Double) {
        
        let visualEffect = UIBlurEffect(style: .Light)
        
        self.visualEffectView = UIVisualEffectView(effect: visualEffect)
        
        self.request = UILabel()
        self.yes = UIButton()
        self.no = UIButton()
        self.cancel = UIButton()
        
        super.init(frame: frame)
        
        self.visualEffectView.frame = self.frame
        
        let black = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 0.90)
        
        //programming request
        self.request.textColor = black
        self.request.text = request
        self.request.numberOfLines = 0 
        self.request.textAlignment = .Center
        self.request.font = UIFont.boldSystemFontOfSize(20)
        self.request.backgroundColor = UIColor.clearColor()
        self.request.adjustsFontSizeToFitWidth = true
        self.request.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        self.request.center = self.center
        
        //programming yes
        self.yes.setTitle("Yes", forState: .Normal)
        self.yes.setTitleColor(black, forState: .Normal)
        self.yes.titleLabel?.font = UIFont.boldSystemFontOfSize(20)
        self.yes.frame = CGRect(x: 0, y: self.frame.maxY - 100, width: self.frame.width / 2, height: 100)
        self.yes.backgroundColor = UIColor.clearColor()
        self.yes.addTarget(self, action: #selector(RequestView.yes(_:)), forControlEvents: .TouchUpInside)
        
        //programming no
        self.no.setTitle("No", forState: .Normal)
        self.no.setTitleColor(black, forState: .Normal)
        self.no.titleLabel?.font = UIFont.boldSystemFontOfSize(20)
        self.no.frame = CGRect(x: self.frame.midX, y: self.frame.maxY - 100 , width: self.frame.width / 2, height: 100)
        self.no.backgroundColor = UIColor.clearColor()
        self.no.addTarget(self, action: #selector(RequestView.no(_:)), forControlEvents: .TouchUpInside)
        
        self.alpha = 0
        
        let views:[UIView] = [visualEffectView, self.request, yes, no, cancel]
        
        for view in views {
            self.addSubview(view)
            
            UIView.animateWithDuration(duration, animations: {
                view.alpha = 1
                
            })
            
        }
        
        UIView.animateWithDuration(duration) { self.alpha = 1

        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

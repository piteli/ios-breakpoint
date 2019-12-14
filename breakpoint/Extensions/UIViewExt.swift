//
//  UIViewExt.swift
//  breakpoint
//
//  Created by Fitri San on 14/12/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit

extension UIView {
    func bindToKeyboard(){
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
        
        @objc func keyboardWillChange(_ notification: NSNotification){
            let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
            let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey]
            let beginningFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            let endFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
            let deltaY = endFrame.origin.y - beginningFrame.origin.y
            
            UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions(rawValue: curve as! UInt), animations: {
                self.frame.origin.y += deltaY
            }, completion: nil)
        }
    }



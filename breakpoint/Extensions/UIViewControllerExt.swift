//
//  UIViewControllerExt.swift
//  breakpoint
//
//  Created by Fitri San on 18/01/2020.
//  Copyright © 2020 Fitri San. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent : UIViewController){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey : kCATransition)
        present(viewControllerToPresent, animated : false, completion : nil)
    }
    
    func dismissDetail(){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey : kCATransition)
        dismiss(animated: false, completion: nil)
    }
}

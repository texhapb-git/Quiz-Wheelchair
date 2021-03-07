//
//  UIButtonExtends.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 07.03.2021.
//

import UIKit

extension UIButton {
    
    func makeRoundedCorners(_ radius: CGFloat = 0) {
        
        let cornerRadius: CGFloat = radius == 0 ? self.frame.height / 2 : radius;
        
        self.layer.cornerRadius = cornerRadius
    }
    
}
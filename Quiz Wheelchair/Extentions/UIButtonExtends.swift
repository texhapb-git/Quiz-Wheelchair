//
//  UIButtonExtends.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 07.03.2021.
//

import UIKit

extension UIButton {
    
    // скругление углов у кнопки
    func makeRoundedCorners(_ radius: CGFloat = 0) {
        layer.cornerRadius = radius == 0 ? frame.height / 2 : radius
    }
    
}

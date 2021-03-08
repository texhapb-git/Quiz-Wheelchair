//
//  EllipseButton.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 07.03.2021.
//

import UIKit

@IBDesignable
class EllipseButton: UIButton {

    @IBInspectable var EllipseButton:Bool = false {
        didSet{
            if EllipseButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if EllipseButton {
            layer.cornerRadius = frame.height / 2
        }
    }

}

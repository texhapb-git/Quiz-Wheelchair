//
//  EllipseButton.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 07.03.2021.
//

import UIKit

@IBDesignable
class EllipseButton: UIButton {
    
    func updateButton() {
        layer.cornerRadius = frame.height / 2
    }

    @IBInspectable var EllipseButton:Bool = false {
        didSet{
            if EllipseButton {
                updateButton()
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if EllipseButton {
            updateButton()
        }
    }

}

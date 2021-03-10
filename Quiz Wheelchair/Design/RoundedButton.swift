//
//  RoundedButton.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 08.03.2021.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    
    func updateButton() {
        layer.cornerRadius = 10
    }

    
    
    @IBInspectable var RoundedButton:Bool = false {
        didSet{
            if RoundedButton {
                updateButton()
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if RoundedButton {
            updateButton()
        }
    }

}

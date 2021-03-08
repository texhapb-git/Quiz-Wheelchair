//
//  RoundedButton.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 08.03.2021.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var RoundedButton:Bool = false {
        didSet{
            if RoundedButton {
                layer.cornerRadius = 10
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if RoundedButton {
            layer.cornerRadius = 10
        }
    }

}

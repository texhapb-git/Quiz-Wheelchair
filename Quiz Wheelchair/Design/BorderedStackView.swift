//
//  BorderedStackView.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 08.03.2021.
//

import UIKit

@IBDesignable
class BorderedStackView: UIStackView {
    
    func updateStack() {
        
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 10
        layoutMargins = UIEdgeInsets(top: 6, left: 15, bottom: 6, right: 15)
        isLayoutMarginsRelativeArrangement = true
    }
    

    @IBInspectable var BorderedStackView:Bool = false {
        didSet{
            if BorderedStackView {
                updateStack()
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if BorderedStackView {
            updateStack()
        }
    }
    
    
    

}

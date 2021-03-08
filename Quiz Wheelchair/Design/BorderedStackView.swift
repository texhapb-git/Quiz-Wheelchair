//
//  BorderedStackView.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 08.03.2021.
//

import UIKit

@IBDesignable
class BorderedStackView: UIStackView {
    
    let borderLineColor = UIColor.lightGray.cgColor
    let borderWidthValue: CGFloat = 1
    let corderRadiusValue: CGFloat = 10
    let layoutMargingValue = UIEdgeInsets(top: 6, left: 15, bottom: 6, right: 15)
    let marginArrangement = true

    @IBInspectable var BorderedStackView:Bool = false {
        didSet{
            if BorderedStackView {
                layer.borderWidth = borderWidthValue
                layer.borderColor = borderLineColor
                layer.cornerRadius = corderRadiusValue
                layoutMargins = layoutMargingValue
                isLayoutMarginsRelativeArrangement = marginArrangement
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if BorderedStackView {
            layer.borderWidth = borderWidthValue
            layer.borderColor = borderLineColor
            layer.cornerRadius = corderRadiusValue
            layoutMargins = layoutMargingValue
            isLayoutMarginsRelativeArrangement = marginArrangement
        }
    }
    

}

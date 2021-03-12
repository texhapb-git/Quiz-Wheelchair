//
//  Colors.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 11.03.2021.
//

import UIKit

enum DesignColors {
    
    case ligthGray
    case royalBlue
    
    var color: CGColor {
        
        switch self {
        case .ligthGray:
            return UIColor.lightGray.cgColor
        case .royalBlue:
            return CGColor.init(red: 65/255, green: 105/255, blue: 225/255, alpha: 1)
        }
    }
}

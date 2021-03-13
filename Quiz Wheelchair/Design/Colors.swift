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
            return #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        case .royalBlue:
            return #colorLiteral(red: 0.2549019608, green: 0.4117647059, blue: 0.8823529412, alpha: 1)
        }
    }
}

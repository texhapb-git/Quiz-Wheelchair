//
//  WelcomeViewController.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 06.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var startQuizButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        stylizeButton(button: startQuizButton)

    }
    
    func stylizeButton (button: UIButton) {
        
        let buttonColor = CGColor.init(red: 65/255, green: 105/255, blue: 225/255, alpha: 1)
        
        button.layer.borderWidth = 2
        button.layer.backgroundColor = buttonColor
        button.layer.borderColor = buttonColor
        button.layer.cornerRadius = startQuizButton.frame.height / 2
        button.setTitleColor(.white, for: [])
    }


}


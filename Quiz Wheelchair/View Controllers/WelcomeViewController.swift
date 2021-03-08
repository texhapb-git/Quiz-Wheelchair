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

        //startQuizButton.makeRoundedCorners()

    }
    
    
    @IBAction func startQuiz () {
        
        let vc = storyboard?.instantiateViewController(identifier: "NavController") as! UINavigationController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    


}



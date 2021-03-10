//
//  QuestionsViewController.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 07.03.2021.
//

import UIKit

class QuestionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func finishQuiz () {
        
        let vc = storyboard?.instantiateViewController(identifier: "ResultPage") as! ResultViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }

}

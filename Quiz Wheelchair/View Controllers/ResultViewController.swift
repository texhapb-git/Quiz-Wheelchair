//
//  ResultViewController.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 10.03.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultTitle: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultDescription: UILabel!
    
    var answers: [Answer] = []
    
    func calculateResult() {
        
        var totalPoints: Int = 0
        let result: Wheelchair!
        
        for answer in answers {
            totalPoints += answer.points
        }
        
        if totalPoints < 1200 {
            result = .standartCradle
        } else if totalPoints >= 1200 && totalPoints < 2000 {
            result = .foldingCradle
        } else if totalPoints >= 2000 && totalPoints <= 2300 {
            result = .book
        } else {
            result = .stick
        }
        
        if let result = result {
            
            resultTitle.text = "Вам идеально подойдет \(result.rawValue)"
            resultImage.image = result.image
            resultDescription.text = result.definition

        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateResult()
       
    }
    



}

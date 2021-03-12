//
//  QuestionsViewController.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 07.03.2021.
//

import UIKit



class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var questionTitle: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleStacks: [BorderedStackView]!
    @IBOutlet var multipleTitles: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet weak var sliderStackView: UIStackView!
    @IBOutlet weak var horizontalSlider: UISlider!
    @IBOutlet weak var sliderTitle: UILabel!
    
    @IBOutlet weak var questionProgressBar: UIProgressView!
    
    
    var questionIndex: Int = 0
    let animationDuration: TimeInterval = 0.6
    
    private var chosenAnswers = [Answer]()
    
    private var currentQuestion: Question {
        Question.allQuestions[questionIndex]
    }
    private var currentAnswers: [Answer] {
        currentQuestion.answers
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI() {
        
        for stackView in [singleStackView, multipleStackView, sliderStackView] {
            
            if let stackView = stackView {
                updateStackViewVisibility(stackView, isHidden: true)
            }
                
        }
        
        let totalProgress = Float(questionIndex) / Float(Question.allQuestions.count)
        questionProgressBar.setProgress(totalProgress, animated: true)
        
        navigationItem.title = "Вопрос №\(questionIndex+1)"
        updateQuestionTitle(questionTitle, text: currentQuestion.questionText)
        
        
        switch currentQuestion.questionType {
        case .single:
            updateSingleStackView()
        case .multiple:
            updateMultipleStackView()
        case .slider:
            updateSliderStackView()
        }
        
        
        
        
    }
    
    func updateSingleStackView() {
        
        for (index, button) in singleButtons.enumerated() {
            button.setTitle(nil, for: [])
            button.isHidden = true
            button.tag = index
        }
        
        for (button, answer) in zip(singleButtons, currentAnswers) {
            button.setTitle(answer.answerText, for: [])
            button.isHidden = false
        }
        
        updateStackViewVisibility(singleStackView)
        

    }
    
    func updateMultipleStackView() {
        
        for title in multipleTitles {
            title.text = ""
            title.isHidden = true
        }
        
        for (title, answer) in zip(multipleTitles, currentAnswers) {
            title.text = answer.answerText
            title.isHidden = false
        }
        
        for (index, switchElement) in multipleSwitches.enumerated() {
            switchElement.isOn = false
            switchElement.tag = index
        }
        
        for (index, stackView) in multipleStacks.enumerated() {
            stackView.isHidden = true
            stackView.tag = index
        }
        
        for (stackView, _) in zip(multipleStacks, currentAnswers) {
            stackView.isHidden = false
        }
        
        updateStackViewVisibility(multipleStackView)
        
    }
    
    func updateSliderStackView() {
        
        horizontalSlider.minimumValue = 1
        horizontalSlider.maximumValue = Float(currentAnswers.count)
        
        let halfAnswersCount = round(Float(currentAnswers.count)/2)
        let index = Int(halfAnswersCount) - 1
        
        horizontalSlider.value = halfAnswersCount
        
        sliderTitle.text = currentAnswers[index].answerText
        
        updateStackViewVisibility(sliderStackView)
    }
    
    // показ и эффект fade при обновлении стека
    func updateStackViewVisibility(_ stackView: UIStackView, isHidden: Bool = false) {
        stackView.isHidden = isHidden
        
        if isHidden {
            stackView.alpha = 0
        }
        else
        {
            UIView.animate(withDuration: animationDuration) {
                stackView.alpha = 1
            }
        }
    }
    
    // эффект fade при обновлении заголовка вопроса
    func updateQuestionTitle(_ title: UILabel, text: String) {
        title.alpha = 0;
        title.text = text
        
        UIView.animate(withDuration: animationDuration) {
            title.alpha = 1
        }
    }

    // переход к следующему вопросу
    func nextQuestion() {
        
        questionIndex += 1
        
        if questionIndex < Question.allQuestions.count {
            updateUI()
        } else {
            showResult()
        }
        
        
    }
    
    //нажатие на один из множества ответов
    @IBAction func singleButtonTapped(_ sender: UIButton) {
        
        let index = sender.tag
        guard index >= 0 && index < currentAnswers.count else {
            return
        }
        
        chosenAnswers.append(currentAnswers[index])

        nextQuestion()
    }
    
    // подсвечиваем рамку стека с включенным switch
    @IBAction func switchTurned(_ sender: UISwitch) {
        multipleStacks[sender.tag].layer.borderColor = sender.isOn ? DesignColors.royalBlue.color : DesignColors.ligthGray.color
    }
    
    // нажатие на кнопку множественного выбоа
    @IBAction func multipleButtonTapped() {
        
        for (index, switchElement) in multipleSwitches.enumerated() {
            
            if switchElement.isOn && index < currentAnswers.count  {
                chosenAnswers.append(currentAnswers[index])
            }
        }
        
        nextQuestion()
        
    }
    
    // смена лейбла при изменении слайдера
    @IBAction func sliderChanged(sender: UISlider) {

        let step: Float = 1
        let roundedValue = round(sender.value / step) * step
        let index = Int(roundedValue) - 1
        
        sender.value = roundedValue
        
        sliderTitle.text = currentAnswers[index].answerText

    }
    
    // нажатие на кнопку выбора в слайдере
    @IBAction func sliderButtonTapped() {
        
        let index = Int(horizontalSlider.value) - 1
        guard index >= 0 && index < currentAnswers.count else {
            return
        }
        
        chosenAnswers.append(currentAnswers[index])

        nextQuestion()
        
    }
    
    // показ страницы результата
    func showResult() {
        
        let vc = storyboard?.instantiateViewController(identifier: "ResultPage") as! ResultViewController
        
        vc.answers = chosenAnswers
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
        
    }
    
}





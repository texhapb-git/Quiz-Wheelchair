//
//  Question.swift
//  Quiz Wheelchair
//
//  Created by Максим Иванов on 10.03.2021.
//

/*
single - вопрос с одним возможным вариантом
multiple - вопрос с несколькими возможными вариантами
slider - вопрос с ползунком
*/

struct Question {
    
    let questionText: String
    let questionType: QuestionType
    let answers: [Answer]
    
    static let allQuestions: [Question] = [
        Question(questionText: "Какой возраст у вашего ребенка?",
                 questionType: .single,
                 answers: [
                    Answer(answerText: "Совсем малыш", points: 1000),
                    Answer(answerText: "1-3 года", points: 2000),
                    Answer(answerText: "Старше трёх лет", points: 2000),
                 ]
        ),
        Question(questionText: "Где будете использовать коляску?",
                 questionType: .multiple,
                 answers: [
                    Answer(answerText: "По ровным покрытиям", points: 0),
                    Answer(answerText: "По просёлочным дорогам", points: 100),
                 ]
        ),
        Question(questionText: "В какого рода автомобиль должна помещаться коляска?",
                 questionType: .single,
                 answers: [
                    Answer(answerText: "Маленький", points: 350),
                    Answer(answerText: "Седан", points: 200),
                    Answer(answerText: "Хэтчбек", points: 0),
                    Answer(answerText: "Большая машина", points: 0),
                 ]
        ),
        Question(questionText: "Вы планируете путешествовать с коляской?",
                 questionType: .single,
                 answers: [
                    Answer(answerText: "На самолёте", points: 500),
                    Answer(answerText: "На поезде", points: 0),
                    Answer(answerText: "Не планирую", points: 0),
                 ]
        ),
        Question(questionText: "Какую ценовую категорию рассматриваете?",
                 questionType: .slider,
                 answers: [
                    Answer(answerText: "3'000—7'000 ₽", points: 0),
                    Answer(answerText: "7'000—15'000 ₽", points: 0),
                    Answer(answerText: "15'000—30'000 ₽", points: 0),
                    Answer(answerText: "Более 30'000 ₽", points: 0),
                 ]
        ),
    ]
    
}

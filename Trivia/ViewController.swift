//
//  Untitled.swift
//  Trivia
//
//  Created by Daniel Li on 6/20/25.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var QuestionText: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var b2: UIButton!
    
    @IBOutlet weak var b3: UIButton!
    
    @IBOutlet weak var b4: UIButton!
    
    
    struct Question {
        var q: String
        var a: String
        var choices: [String]
    }
    
    var question_list: [Question]

    required init?(coder: NSCoder) {
        let q1 = Question(q: "What is the capital of France?", a: "Paris", choices: ["Paris", "Rome", "China", "Apple"])
        let q2 = Question(q: "What is the smallest planet?", a: "Mercury", choices: ["France", "Mercury", "The Sun", "Mars"])
        let q3 = Question(q: "How many continents are there?", a: "Seven", choices: ["Zero", "One", "Two", "Seven"])
        let q4 = Question(q: "Game Complete", a: "x", choices: ["Restart Game", "", "", ""])
        self.question_list = [q1, q2, q3, q4]
        super.init(coder: coder)
    }


    /*
    init() {
        self.question_list = [q1, q2, q3]
        super.init(nibName: nil, bundle: nil)
    }
     
    required init?(coder: NSCoder) {
        fatalError(".")
    }*/
    
    var question_num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionText.textAlignment = .center //this centers the question label
    }
    
    //let questions = ["What is the capital of France?", "What is the smallest planet?", "How many continents are there?"]
    //let questions = ["What is the capital of France?":"Paris", "What is the smallest planet?":"Mercury", "How many continents are there?":"Seven"]
    

    
    @IBAction func Button1(_ sender: UIButton) {
        //var question_current = Array(questions.keys)[question_num]
        var question_current = question_list[question_num]
        let answer_current = question_current.a
        if let answer = sender.titleLabel?.text {

            //let q = Question?.text;

            if (answer == answer_current) {
                question_num += 1
                question_current = question_list[question_num]
                QuestionText.text = question_current.q
                //Question.text = question_current
                b1.setTitle(question_current.choices[0], for:.normal)
                b2.setTitle(question_current.choices[1], for:.normal)
                b3.setTitle(question_current.choices[2], for:.normal)
                b4.setTitle(question_current.choices[3], for:.normal)
            }
        }
        if (question_num == 3){
            question_num = 0;
            question_current = question_list[question_num]
            QuestionText.text = question_current.q
            b1.setTitle(question_current.choices[0], for:.normal)
            b2.setTitle(question_current.choices[1], for:.normal)
            b3.setTitle(question_current.choices[2], for:.normal)
            b4.setTitle(question_current.choices[3], for:.normal)
        }
    }
    
    @IBAction func Button2(_ sender: UIButton) {
        var question_current = question_list[question_num]
        let answer_current = question_current.a
        if let answer = sender.titleLabel?.text {

            //let q = Question?.text;

            if (answer == answer_current) {
                question_num += 1
                question_current = question_list[question_num]
                QuestionText.text = question_current.q
                //Question.text = question_current
                b1.setTitle(question_current.choices[0], for:.normal)
                b2.setTitle(question_current.choices[1], for:.normal)
                b3.setTitle(question_current.choices[2], for:.normal)
                b4.setTitle(question_current.choices[3], for:.normal)
            }
        }
    }
    
    @IBAction func Button3(_ sender: UIButton) {
        var question_current = question_list[question_num]
        let answer_current = question_current.a
        if let answer = sender.titleLabel?.text {

            //let q = Question?.text;

            if (answer == answer_current) {
                question_num += 1
                question_current = question_list[question_num]
                QuestionText.text = question_current.q
                //Question.text = question_current
                b1.setTitle(question_current.choices[0], for:.normal)
                b2.setTitle(question_current.choices[1], for:.normal)
                b3.setTitle(question_current.choices[2], for:.normal)
                b4.setTitle(question_current.choices[3], for:.normal)
            }
        }
    }
    
    @IBAction func Button4(_ sender: UIButton) {
        var question_current = question_list[question_num]
        let answer_current = question_current.a
        if let answer = sender.titleLabel?.text {

            //let q = Question?.text;

            if (answer == answer_current) {
                question_num += 1
                question_current = question_list[question_num]
                QuestionText.text = question_current.q
                //Question.text = question_current
                b1.setTitle(question_current.choices[0], for:.normal)
                b2.setTitle(question_current.choices[1], for:.normal)
                b3.setTitle(question_current.choices[2], for:.normal)
                b4.setTitle(question_current.choices[3], for:.normal)
            }
        }
    }
    

}


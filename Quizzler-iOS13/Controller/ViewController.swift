//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    
    // will happen here (in this function) as soon as the App loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        progressBar.progress = 0.0
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer!)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()

        // I need Timer to let the User see the color of the answer evaluating (true/false) for several seconds till clear color trigger
        
        var _ = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: { timer in
                self.updateUI()
                    })
       
        progressBar.progress += quizBrain.getProgress(questionNumber: quizBrain.questionNumber)
      
        
    }
    
     func updateUI( ) {
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
    
    
}


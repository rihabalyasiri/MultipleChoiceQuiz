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
    
    let quiz = [ "Is Berlin the capital of Germany", "is Bill Gate the founder of Apple", " 4 + 3 = 7"]
    
    var questionNumber = 0
    
    // will happen here (in this function) as soon as the App loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
    }
    
    func updateUI( ) {
        questionLabel.text = quiz[questionNumber]
    }
    
}


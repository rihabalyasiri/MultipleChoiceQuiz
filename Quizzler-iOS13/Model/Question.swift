//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Rihab Al-yasiri on 18.01.21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let text: String
    let answers: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], c:String) {
        text = q
        answers = a
        correctAnswer = c
    }
}

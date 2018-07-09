//
//  Question.swift
//  Quizzler
//
//  Created by Jing Xiao on 7/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init( text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
    
}

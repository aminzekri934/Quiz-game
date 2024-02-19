//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Amine Zekri on 19/2/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation
struct Question{
    var questiontext:String
    var correctAnswer:String
    init(q: String, a: String) {
        self.questiontext = q
        self.correctAnswer = a
    }
}

//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by amine zekri.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    var quizbrain = Quizbrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    @objc func updateUI(){
        questionLabel.text = quizbrain.getText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressView.progress = quizbrain.getProgress()
        scoreLabel.text = "score: \(quizbrain.getScore())"
    }
   

    @IBAction func answerBottonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotIt = quizbrain.checkAnswer(userAnswer)
        if userGotIt {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        quizbrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
    }
    
}


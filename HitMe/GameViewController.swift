//
//  GameViewController.swift
//  HitMe
//
//  Created by IL1ne on 17/12/2018.
//  Copyright © 2018 IL1ne. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var btnHitMe: UIButton!
    @IBOutlet weak var thumbslider: UISlider!
    
    // - Property
    var currentValueOfSlider = 1
    var currentRandomValue = 0
    var actualRoundIndex = 1
    var actualScore = 0
    
    // - Lifecicle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSlider()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    // - Game Configurator
    func configureSlider() {
        thumbslider.setThumbImage(UIImage(named: "bulleye"), for:    .normal)
        thumbslider.setThumbImage(UIImage(named: "bulleye"), for:    .highlighted)
    
        newGame()
    }
    
    func randomLabelGenerator() {
        let randomNumber = Int.random(in: 1 ..< 100)
        self.currentRandomValue = randomNumber
        randomNumberLabel.text = String(randomNumber)
    }
    
    func newGame() {
        randomLabelGenerator()
        self.actualScore = 0
        self.actualRoundIndex = 1
        self.roundLabel.text = String(actualRoundIndex)
        self.scoreLabel.text = String(actualScore)
    }
    
    func showMessage() {
        let messege = "Our current value of slider is \(self.currentValueOfSlider)"
        let alert = UIAlertController(title: "My Alert", message: messege, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func getTry() {
        if  self.currentValueOfSlider == self.currentRandomValue {
            self.actualScore += 1
            self.actualRoundIndex += 1
            self.randomLabelGenerator()
        } else {
            self.actualRoundIndex += 1
        }
        self.roundLabel.text = String(actualRoundIndex)
        self.scoreLabel.text = String(actualScore)
    }
    
    // - Action
    @IBAction func moveSlider(_ slider: UISlider) {
        let sliderPosition = Int(round(slider.value))
        self.currentValueOfSlider = sliderPosition
    }
    
    @IBAction func restoreBtnRestart(_ sender: Any) {
        newGame()
    }
    
    @IBAction func tapBttnHitMe(_ sender: Any) {
        getTry()
        showMessage()
        
    }
    
}


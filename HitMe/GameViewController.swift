//
//  GameController.swift
//  HitMe
//
//  Created by IL1ne on 17/12/2018.
//  Copyright © 2018 IL1ne. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var btnHitMe: UIButton!
    @IBOutlet weak var thumbslider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomLabelGenerator()
    }

    func randomLabelGenerator() {
        let randomNumber = Int.random(in: 0 ..< 100)
        randomNumberLabel.text = String(randomNumber)
    }
    
    @IBAction func moveSlider(_ sender: Any) {
    }
    
    @IBAction func restoreBtnRestart(_ sender: Any) {
    }
    
    @IBAction func tapBttnAbout(_ sender: Any) {
        
    }
    
    @IBAction func tapBttnHitMe(_ sender: Any) {
        
        let alert = UIAlertController(title: "Hit Alert", message: "You tap the botton.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
}


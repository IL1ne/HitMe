//
//  InfoViewController.swift
//  HitMe
//
//  Created by IL1ne on 20/12/2018.
//  Copyright © 2018 IL1ne. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var versionControl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pushActualVersion()
    }
    
    
    func pushActualVersion() {
        versionControl.text = "version: 1.0.1"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

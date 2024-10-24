//
//  ViewController.swift
//  OddEvenGame
//
//  Created by YangJeongMu on 10/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerBallCountLbl: UILabel!
    @IBOutlet weak var userBallCountLbl: UILabel!
    
    var computerBallCount: Int = 20
    var userBallCount: Int = 20
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLbl.text = String(computerBallCount)
        userBallCountLbl.text = String(userBallCount)
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func gameStartRressed(_ sender: Any) {
        print("게임시작!! ")
    }
    
}


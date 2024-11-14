//
//  ViewController.swift
//  OddEvenGame
//
//  Created by YangJeongMu on 10/24/24.
//
/*
 1. 컴퓨터가 1에서 10까지의 랜덤으로 숫자를 선택합니다.
 2. 사용자는 가진 구슬 개수를 걸고 홀짝 중의 하나를 선택한다.
 3. 결과값이 화면에 보여진다.
 */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var computerBallCountLbl: UILabel!
    @IBOutlet weak var userBallCountLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    
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
        print(self.getRandom())
        
        let alert = UIAlertController.init(title: "GAME START", message: "홀 짝을 선택해주세요.", preferredStyle: .alert)
        
        let oddBtn = UIAlertAction.init(title: "홀", style: .default) { _ in
            print("홀 버튼을 클릭했습니다.")
            
            guard let input = alert.textFields?.first?.text, let  value = Int(input) else {
                return
            }
            
            self.getWinner(count: value, select: "홀")
            
        }
        
        let evenBtn = UIAlertAction.init(title: "짝", style: .default) { _ in
            print("짝 버튼을 클릭했습니다.")
            
            guard let input = alert.textFields?.first?.text, let _ = Int(input) else {
                return
                
            }
            
            guard let value = Int(input) else {
                return
            }
            
            
            self.getWinner(count: value, select: "짝")
            
            
            
            
            guard let input = alert.textFields?.first?.text else {
                return
            }
            print("입력한 값은 \(input)입니다.")
        }
        
        alert.addTextField { textField in
            textField.placeholder = "베팅할 구슬의 개수를 입력해주세요"
        }
        
        alert.addAction(oddBtn)
        alert.addAction(evenBtn)
        
        
        self.present(alert, animated: true) {
            print("alert 창 띄웠습니다.")
        }
     
    }
    
    func getWinner(count: Int, select: String){
        
        let com = self.getRandom()
        let comType = com % 2 == 0 ? "짝" : "홀"
        
        var result = comType
        if comType == select {
            print("User win")
            result = result + "(User win)"
            self.caluclateBalls(winner: "User", count: count)
        }else{
            result = result + "(Computer win)"
            print("Customer win")
            self.caluclateBalls(winner: "com", count: count)
        }
        
        self.resultLbl.text = result
        
        
        if comType == select {
            print("User win")
        }else{
            print("Computer win")
        }
        
    }
    func caluclateBalls(winner: String, count: Int) {
        
        if winner == "com" {
            self.userBallCount = self.userBallCount - count
            self.computerBallCount = self.computerBallCount + count
        }else {
            self.userBallCount = self.userBallCount + count
            self.computerBallCount = self.computerBallCount - count
        }
        
        self.userBallCountLbl.text = "\(self.userBallCount)"
        self.computerBallCountLbl.text = "\(self.computerBallCount)"
        
    }
    
    func getRandom() -> Int {
        return Int(arc4random_uniform(10) + 1)
    }
    
}

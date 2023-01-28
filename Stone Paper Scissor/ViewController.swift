//
//  ViewController.swift
//  Stone Paper Scissor
//
//  Created by Debashish on 28/01/23.
//


import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    var myPoints = 0
    var pcPoints = 0
    let array = ["Stone","Paper","Scissor"]
    
    // MARK: - IBOutlets
    @IBOutlet weak var myChoiseLabel: UILabel!
    @IBOutlet weak var pcChoiseLabel: UILabel!
    @IBOutlet weak var theEndLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var pcPointsLabel: UILabel!
    
    
    // MARK: - IBActions
    @IBAction func rockSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected]
        
        if pcSelected == "Stone" {
            myChoiseLabel.text = "My Choice : Stone"
            pcChoiseLabel.text = "PC Choice : Stone"
            theEndLabel.text = "Match Draw"
            
            
        }else if pcSelected == "Paper" {
            myChoiseLabel.text = "My Choice : Stone"
            pcChoiseLabel.text = "PC Choice : Paper"
            theEndLabel.text = "PC Wins"
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
        }else if pcSelected == "Scissor" {
            myChoiseLabel.text = "My Choice : Stone"
            pcChoiseLabel.text = "PC Choice : Scissor"
            theEndLabel.text = "You Win"
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
        }
    }
    
    
    @IBAction func paperSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected]
        
        if pcSelected == "Stone" {
            myChoiseLabel.text = "My Choice : Paper"
            pcChoiseLabel.text = "PC Choice : Stone"
            theEndLabel.text = "You Win"
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
            
        }else if pcSelected == "Paper" {
            myChoiseLabel.text = "My Choice : Paper"
            pcChoiseLabel.text = "PC Choice : Paper"
            theEndLabel.text = "Match Draw"
            
            
        }else if pcSelected == "Scissor" {
            myChoiseLabel.text = "My Choice : Paper"
            pcChoiseLabel.text = "PC Choice : Scissor"
            theEndLabel.text = "PC Wins"
            
            pcPoints += 1
            pcPointsLabel.text = String(pcPoints)
            
        }
    }
    
    @IBAction func scissorSelected(_ sender: Any) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let pcSelected = array[randomSelected]
        
        if pcSelected == "Stone" {
            myChoiseLabel.text = "My Choice : Scissor"
            pcChoiseLabel.text = "PC Choice : Stone"
            theEndLabel.text = "PC Wins"
            
            pcPoints += 1
            
            pcPointsLabel.text = String(pcPoints)
            
            
        }else if pcSelected == "Paper" {
            myChoiseLabel.text = "My Choice : Scissor"
            pcChoiseLabel.text = "PC Choice : Paper"
            theEndLabel.text = "You Win"
            
            myPoints += 1
            
            myPointsLabel.text = String(myPoints)
            
            
        }else if pcSelected == "Scissor" {
            myChoiseLabel.text = "My Choice : Scissor"
            pcChoiseLabel.text = "PC Choice : Scissor"
            theEndLabel.text = "Match Draw"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}




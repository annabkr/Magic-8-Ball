//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Anna Baker on 3/19/19.
//  Copyright © 2019 Anna Baker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: ballArray[randomNumber])
    }
    
    func newBall () {
        let lastRandomNumber = randomNumber
        
        while (randomNumber == lastRandomNumber){
            randomNumber = Int.random(in: 0..<5)
        }
        
        imageView.image = UIImage(named: ballArray[randomNumber])
    }
        
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBall()
    }
    
}


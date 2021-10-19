//
//  ViewController.swift
//  Traffic light
//
//  Created by Moshkin Ivan on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myRedLabel: UIView!
    @IBOutlet weak var myYellowLabel: UIView!
    @IBOutlet weak var myGreenLabel: UIView!
    @IBOutlet weak var startButtonText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myRedLabel.layer.cornerRadius = 80
        myRedLabel.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        myGreenLabel.layer.cornerRadius = 80
        myGreenLabel.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        myYellowLabel.layer.cornerRadius = 80
        myYellowLabel.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
    }
    var actyveView : Int = 1
    @IBAction func startButton(_ sender: Any) {
        startButtonText.setTitle("NEXT", for: .normal)
       
        if actyveView == 1 {
            myRedLabel.backgroundColor = UIColor.red.withAlphaComponent(255)
            myGreenLabel.backgroundColor = UIColor.green.withAlphaComponent(0.3)
            myYellowLabel.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            actyveView = 2
        } else {
            if actyveView == 2 {
                myYellowLabel.backgroundColor = UIColor.yellow.withAlphaComponent(255)
                myGreenLabel.backgroundColor = UIColor.green.withAlphaComponent(0.3)
                myRedLabel.backgroundColor = UIColor.red.withAlphaComponent(0.3)
                actyveView = 3
            } else {
                myGreenLabel.backgroundColor = UIColor.green.withAlphaComponent(255)
                myYellowLabel.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
                myRedLabel.backgroundColor = UIColor.red.withAlphaComponent(0.3)
                actyveView = 1
            }

        }

    }
    
}


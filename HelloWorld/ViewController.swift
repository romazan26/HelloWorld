//
//  ViewController.swift
//  HelloWorld
//
//  Created by Роман on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    var lightPosion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 90
        yellowView.layer.cornerRadius = 90
        greenView.layer.cornerRadius = 90
    }
    
    @IBAction func pushStartButton() {
        lightPosion += 1
        
        startButton.setTitle(
            lightPosion == 0  ? "Start" : "Next",
            for: .normal)
        
        switch lightPosion{
        case 0:
            self.redView.alpha = 0.3
            self.yellowView.alpha = 0.3
            self.greenView.alpha = 0.3
        case 1:
            self.redView.alpha = 1
            self.yellowView.alpha = 0.3
            self.greenView.alpha = 0.3
        case 2:
            self.redView.alpha = 0.3
            self.yellowView.alpha = 1
            self.greenView.alpha = 0.3
        case 3:
            self.redView.alpha = 0.3
            self.yellowView.alpha = 0.3
            self.greenView.alpha = 1
            lightPosion = 0
        default:
            lightPosion = 0
        }
        
        
    }
    
}

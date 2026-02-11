//
//  ViewController.swift
//  TrafficLight
//
//  Created by veronika on 9.02.26.
//

import UIKit


final class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    
    @IBOutlet var changeSignalButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightOff = 0.3
    private let lightOn = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignalView.alpha = lightOff
        yellowSignalView.alpha = lightOff
        greenSignalView.alpha = lightOff
        
        redSignalView.layer.cornerRadius = 70
        yellowSignalView.layer.cornerRadius = 70
        greenSignalView.layer.cornerRadius = 70
        changeSignalButton.layer.cornerRadius = 15

    }
    
    @IBAction func changeSignalButtonDidTapped() {
        if changeSignalButton.currentTitle == "START" {
            changeSignalButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redSignalView.alpha = lightOn
            yellowSignalView.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            redSignalView.alpha = lightOff
            yellowSignalView.alpha = lightOn
            currentLight = .green
        case .green:
            yellowSignalView.alpha = lightOff
            greenSignalView.alpha = lightOn
            currentLight = .red
        }
    }
    
}

extension ViewController {
    enum CurrentLight{
         case red, yellow, green
    }
}


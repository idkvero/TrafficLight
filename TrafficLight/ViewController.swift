//
//  ViewController.swift
//  TrafficLight
//
//  Created by veronika on 9.02.26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var changeSignalButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalView.layer.cornerRadius = 70
        yellowSignalView.layer.cornerRadius = 70
        greenSignalView.layer.cornerRadius = 70
        changeSignalButton.layer.cornerRadius = 15

    }
    
    @IBAction func changeSignalButtonDidTapped(_ sender: UIButton) {
        if yellowSignalView.alpha == 0.5 && greenSignalView.alpha == 0.5 && redSignalView.alpha == 0.5 {
            redSignalView.alpha = 1
        } else if redSignalView.alpha == 1 {
            yellowSignalView.alpha = 1
            redSignalView.alpha = 0.5
        } else if yellowSignalView.alpha == 1 {
            greenSignalView.alpha = 1
            yellowSignalView.alpha = 0.5
        } else {
            greenSignalView.alpha = 0.5
            redSignalView.alpha = 1
        }
    }
    
}


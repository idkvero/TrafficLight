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
    

}


//
//  ViewController.swift
//  TrafficLights
//
//  Created by Иса on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTrafficLights: UIView!
    @IBOutlet var yellowTrafficLights: UIView!
    @IBOutlet var greenTrafficLights: UIView!
    
    var traffictLight: TraffictLamp = .red
    var ligthIsOn: CGFloat = 1
    var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLights.alpha = lightIsOff
        yellowTrafficLights.alpha = lightIsOff
        greenTrafficLights.alpha = lightIsOff
        
    }
    
    override func viewWillLayoutSubviews() {
        redTrafficLights.layer.cornerRadius = redTrafficLights.frame.height / 2
        yellowTrafficLights.layer.cornerRadius = yellowTrafficLights.frame.height / 2
        greenTrafficLights.layer.cornerRadius = greenTrafficLights.frame.height / 2
    }
    
    @IBAction func nextTrafficLightButton(_ sender: UIButton) {
        if sender.titleLabel?.text == "START" {
            sender.setTitle("NEXT", for: .normal)
        }
        
        switch traffictLight {
        case .red:
            redTrafficLights.alpha = ligthIsOn
            greenTrafficLights.alpha = lightIsOff
            traffictLight = .yellow
        case .yellow:
            yellowTrafficLights.alpha = ligthIsOn
            redTrafficLights.alpha = lightIsOff
            traffictLight = .green
        case .green:
            greenTrafficLights.alpha = ligthIsOn
            yellowTrafficLights.alpha = lightIsOff
            traffictLight = .red
        }
    }
    
}

enum TraffictLamp {
    case red
    case yellow
    case green
}

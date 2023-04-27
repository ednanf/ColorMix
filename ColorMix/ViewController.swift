//
//  ViewController.swift
//  ColorMix
//
//  Created by Ednan R. Frizzera Filho on 27/04/23.
//

import UIKit

class ViewController: UIViewController {
// MARK: - OUTLETS
    @IBOutlet var colorView: UIView!
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!

// MARK: - PROPERTIES
    
// MARK: - SETUP
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            updateColor()
        }
    }
    
// MARK: - FUNCTIONS
    func updateColor() {
        var red: CGFloat   = 0
        var green: CGFloat = 0
        var blue: CGFloat  = 0
        
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
}

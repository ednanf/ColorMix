//
//  ViewController.swift
//  ColorMix
//
//  Created by Ednan R. Frizzera Filho on 27/04/23.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBOUTLETS
    @IBOutlet var colorView: UIView!
   
    @IBOutlet var redSwitch: UISwitch!
    @IBOutlet var greenSwitch: UISwitch!
    @IBOutlet var blueSwitch: UISwitch!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!


    // MARK: - PROPERTIES
  

    // MARK: - SETUP
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateColor()
        
        
    }


    // MARK: - IBACTIONS
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: Any) {
        resetColor()
        updateColor()
    }
    
    
    // MARK: - FUNCTIONS
    func updateColor() {
        var red: CGFloat   = 0
        var green: CGFloat = 0
        var blue: CGFloat  = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func resetColor() {
        redSwitch.setOn(false, animated: true)
        greenSwitch.setOn(false, animated: true)
        blueSwitch.setOn(false, animated: true)
        
        redSlider.setValue(1, animated: true)
        greenSlider.setValue(1, animated: true)
        blueSlider.setValue(1, animated: true)
    }
}

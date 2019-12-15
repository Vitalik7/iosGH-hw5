//
//  ViewController.swift
//  hw5
//
//  Created by Vitalik Lavrenko on 11/16/19.
//  Copyright © 2019 Vitalik Lavrenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBOutlet weak var buttonClick: UIButton!
    @IBOutlet weak var labelButtonClick: UILabel!
    
    @IBAction func buttonChangeValue(_ sender: UIButton) {
       labelButtonClick.text = "Hello"
    }
    
    @IBOutlet weak var labelOneOrTwo: UILabel!
    
    @IBAction func switchValue(_ sender: UISegmentedControl) {
        labelOneOrTwo.text = String(sender.selectedSegmentIndex + 1)
    }
    
    @IBOutlet weak var labalToTextField: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func inputChnged(_ sender: Any) {
        
        labalToTextField.text = textField.text
    }
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBAction func sliderChanged(_ sender: Any) {
        sliderLabel.text = String(slider.value)
    }
    
    @IBOutlet weak var switcher: UISwitch!
    @IBAction func swithBackgroundColor(_ sender: Any) {
        if switcher.isOn {
            self.view.backgroundColor = UIColor.lightGray
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }
    
    @IBOutlet weak var activitiIndicator: UIActivityIndicatorView!
    override func viewWillAppear(_ animated: Bool) {
        activitiIndicator.transform = CGAffineTransform(scaleX: 2, y: 2)
    }
    
    @IBOutlet weak var buttonPress: UIButton!
    @IBAction func buttonAction(_ sender: Any) {
        if activitiIndicator.isAnimating {
            buttonPress.setTitle("Start", for: .normal)
            activitiIndicator.stopAnimating()
        } else {
            buttonPress.setTitle("Stop", for: .normal)
            activitiIndicator.startAnimating()
        }
    }
    
    @IBOutlet weak var labelForStepper: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func stepperAction(_ sender: Any) {
        labelForStepper.text = String(stepper.value)
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func buttonActionAddImage(_ sender: Any) {
        imageView.image = UIImage(named: "Image")
    }
    
}


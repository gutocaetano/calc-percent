//
//  ViewController.swift
//  Copyright © 2016 Gustavo Caetano. All rights reserved.

import UIKit

class ViewController: UIViewController, ADBannerViewDelegate {
    

    @IBOutlet weak var displayLabel: UILabel!

    var isFirstDigit = true
    var operation = "="
    
    var displayValue: Float {
        get {
            return (displayLabel.text! as NSString).floatValue
        }
        set {
            displayLabel.text  = "\(newValue)"
            isFirstDigit = true
            operation = "="
        }
    }
    
    var deduction: Float {
        get {
            return (labelSliderValue.text! as NSString).floatValue
        }
        set {
            labelSliderValue!.text  = "\(newValue)"
            isFirstDigit = true
            operation = "="
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
      }
    @IBAction func totalResult(sender: AnyObject) {
        let percent : Float = (100 - deduction) * 0.1 * 0.1
        
        
            return displayValue *= percent
        }

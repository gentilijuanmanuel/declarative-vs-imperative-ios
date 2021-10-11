//
//  ViewController.swift
//  UIKitTechTalkExample
//
//  Created by Juan Manuel Gentili on 07/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var includeSalt = false
    private var includeRedPepper = false
    private var avocadoQuantity = 1
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var saltLabel: UILabel!
    @IBOutlet weak var pepperLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var saltSwitch: UISwitch!
    @IBOutlet weak var pepperSwitch: UISwitch!
    @IBOutlet weak var quantityStepper: UIStepper!
    @IBOutlet weak var orderCompletedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.orderCompletedLabel.isHidden = true
        self.quantityLabel.text = "Quantity: \(avocadoQuantity)"
    }
    
    @IBAction func saltSwitchValueChanged(_ sender: UISwitch) {
        self.includeSalt = sender.isOn
    }
    
    @IBAction func pepperSwitchValueChanged(_ sender: UISwitch) {
        self.includeRedPepper = sender.isOn
    }
    
    @IBAction func quantityStepperValueChanged(_ sender: UIStepper) {
        self.avocadoQuantity = Int(sender.value)
        self.quantityLabel.text = "Quantity: \(avocadoQuantity)"
    }
    
    @IBAction func orderButtonPressed(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.green
        
        self.titleLabel.textColor = UIColor.gray
        self.saltLabel.textColor = UIColor.gray
        self.pepperLabel.textColor = UIColor.gray
        self.quantityLabel.textColor = UIColor.gray
        
        self.saltSwitch.isEnabled = false
        self.pepperSwitch.isEnabled = false
        
        self.quantityStepper.isEnabled = false
        
        self.orderButton.isEnabled = false
        
        self.orderCompletedLabel.isHidden = false
    }
    
    
}


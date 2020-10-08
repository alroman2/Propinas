//
//  ViewController.swift
//  Propinas
//
//  Created by Alexander Roman Montiel on 10/6/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentSlider: UISlider!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var billView: UIView!
    @IBOutlet weak var tipView: UIView!
    @IBOutlet weak var totalView: UIView!
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipNameLabel: UILabel!
    @IBOutlet weak var totalNameLabel: UILabel!
    let defaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view is appearing")
        
        let defaultTip = Float(defaults.integer(forKey: "defaultTip"))
        let isDarkMode = defaults.bool(forKey: "isDarkMode")
        //change theme of app
        displayMode(isDarkMode: isDarkMode)
        //convert from int to decimal (1...100)/100
        percentSlider.value = defaultTip/100
        percentLabel.text = String(format: "%.0f%%", percentSlider.value * 100)
        print(String(percentSlider.value))
    }
    
    func displayMode(isDarkMode: Bool){
        if isDarkMode {
            //set all feats to dark
            mainView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            billView.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            tipView.backgroundColor = #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)
            totalView.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
            
            billLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            tipNameLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            totalNameLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            tipLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            totalLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            billField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            percentLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            billField.keyboardAppearance = UIKeyboardAppearance.dark
            
        }
        else{
            mainView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            billView.backgroundColor = #colorLiteral(red: 0.7687456608, green: 0.9560061097, blue: 0.7906689048, alpha: 1)
            tipView.backgroundColor = #colorLiteral(red: 0.5917060375, green: 0.740791142, blue: 0.9137026668, alpha: 1)
            totalView.backgroundColor = #colorLiteral(red: 0.9861573577, green: 0.8986995816, blue: 0.9219819903, alpha: 1)
            
            billLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            tipNameLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            totalNameLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            tipLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            totalLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            billField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            percentLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            billField.keyboardAppearance = UIKeyboardAppearance.light
        }
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }
   
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        //code was used for percent switched
        //let tipPercent = [0.15,0.18,0.2]
        //let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let tipPercent = Double(percentSlider.value)
        let tip = bill * tipPercent
        let total = bill + tip
        print(String(billField.text!))
        print(tip)
        print(total)
        print(String(tipPercent))
        percentLabel.text = String(format: "%.0f%%", tipPercent*100)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
}


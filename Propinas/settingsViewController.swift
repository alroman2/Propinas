//
//  settingsViewController.swift
//  Propinas
//
//  Created by Alexander Roman Montiel on 10/7/20.
//

import UIKit
/*
 the dark mode switch and default field were deleted due to run time issues
 attempt to readd, attempt to add new IBA and finish the default settings updating/saving
 */
class settingsViewController: UIViewController {
    let defaults = UserDefaults.standard
        
    @IBOutlet weak var darkModeSwitch: UISwitch!
    @IBOutlet weak var defaulTipField: UITextField!
    
    @IBOutlet var settingView: UIView!
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet weak var defaultTipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        let defaultTip = defaults.integer(forKey: "defaultTip")
        print("Settings opened: \(defaultTip)")
        defaulTipField.text = "\(defaultTip)"
        
        let isDarkMode = defaults.bool(forKey: "isDarkMode")
        darkModeSwitch.setOn(isDarkMode, animated: true)
        displayMode(isDarkMode: isDarkMode)
        
    }
    
    func displayMode(isDarkMode: Bool){
        if isDarkMode {
            settingView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            darkModeLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            defaultTipLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            defaulTipField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            defaulTipField.keyboardAppearance = UIKeyboardAppearance.dark
        } else {
            settingView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            darkModeLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            defaultTipLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            defaulTipField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            defaulTipField.keyboardAppearance = UIKeyboardAppearance.light
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //save the current settings
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //setter for user defualts
    
    @IBAction func onTap(_ sender: Any) {
        defaulTipField.endEditing(true)
    }
    
    @IBAction func onSwitch(_ sender: Any) {
        defaults.set(darkModeSwitch.isOn, forKey: "isDarkMode")
        displayMode(isDarkMode: defaults.bool(forKey: "isDarkMode"))
      
    }
    
    @IBAction func onSet(_ sender: Any) {
        var tip = Int(defaulTipField.text!) ?? 0
        if tip > 100 {
            tip = 100
        }
        else if tip < 0 {
            tip = 0
        }
        defaults.set(tip ,forKey: "defaultTip")
        print("saved item: ")
        print(defaults.integer(forKey: "defaultTip"))
    }
    

}

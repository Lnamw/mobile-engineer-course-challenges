//
//  ViewController.swift
//  SayMyName
//
//  Created by Elena Maso Willen on 19/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var changeColorSwitch: UISwitch!
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        nameTextField.text = ""
        messageLabel.text = ""
        changeColorSwitch.on = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func buttonTapped(sender: UIButton)
    {
        sayHello()
    }
    
    func sayHello() -> Bool
    {
        var rc = false   //rc = return code
        if let name = nameTextField.text
        {
            rc = true
            nameTextField.resignFirstResponder()  //user type something enleve le keyboard
            let firstName = name.characters.split(" ").map {
                String($0) }  // Split le nom et le prenom  - supposons que tout le monde ecrit prenom et nom 
                              // .map  on passe une closure(collection of instruction delimited by curly braces)et on prend le first argument $0 make sure is a String 
                              // on store that into firstName array
            messageLabel.text = "Hello \(firstName[0])"
        }
        return rc
    }
    
    
    @IBAction func switchValueChanged(sender: UISwitch)
    {
        if sender.on
        {
            view.backgroundColor = UIColor.greenColor()
        }
        else
        {
            view.backgroundColor = UIColor.whiteColor()
        }
    }

}



















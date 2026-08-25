//
//  ViewController.swift
//  IOS102 Pre-work
//
//  Created by Shahed Ahmed on 8/24/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        // count number of pets
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceDidTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        let year = yearSegmentedcontrol.titleForSegment(at: yearSegmentedcontrol.selectedSegmentIndex)
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = """
            My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).
            I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.
            It is \(morePetsSwitch.isOn) that I want more pets.
            """
        // Creates the alert where we pass in our message, which our introduction.
        
         let alert = UIAlertController(title: "Hello!", message: introduction, preferredStyle: .alert)// A way to dismiss the box once it pops up
         let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        // Passing this action to the alert controller so it can be dismissed
        alert.addAction(action)
        present(alert, animated: true, completion: nil)

        
        }
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var yearSegmentedcontrol: UISegmentedControl!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


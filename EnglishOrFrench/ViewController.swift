//
//  ViewController.swift
//  EnglishOrFrench
//
//  Created by Vallamkonda, Sunaina on 2019-11-26.
//  Copyright © 2019 Vallamkonda, Sunaina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var textInput: UITextView!
    @IBOutlet weak var outputResults: UILabel!
    //MARK: Initializers
    
    //MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Check inputed text for s' and t's
    
    @IBAction func analyze(_ sender: Any) {
     // Reset label everytime button is pressed
        outputResults.text = ""
        
        // Protect against no input
        guard let enteredMessage = textInput.text, enteredMessage.count > 0  else {
            outputResults.text = "Please enter text to analyze"
            return
        }
        
    }
    
}


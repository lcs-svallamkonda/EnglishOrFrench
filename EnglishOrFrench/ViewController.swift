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
        
        // Variables to count S' and T's
        var sCount = 0
        var tCount = 0
        
        // Iterate over every character in message
        for singleCharacter in enteredMessage {
            switch singleCharacter{
            case "s", "S":
                sCount += 1
            case "t", "T":
                tCount += 1
            default: print("")
            }
            
            // Output results
            if sCount > tCount  {
                outputResults.text = "This is probably French text."
            } else if tCount > sCount {
                outputResults.text = "This is probably English text."
                
            } else {
                outputResults.text = "This is probably French text."
            }
        }
        
    }
    
}

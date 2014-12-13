//
//  ViewController.swift
//  Postcard
//
//  Created by Brian D Keane on 12/13/14.
//  Copyright (c) 2014 Brian D Keane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var enterMessageField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageField.text
        messageLabel.textColor = UIColor.redColor()
        sendMessageButton.resignFirstResponder()
        nameLabel.text = enterNameField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        sendMessageButton.setTitle("Message Sent", forState: UIControlState.Normal)
        
    }

}


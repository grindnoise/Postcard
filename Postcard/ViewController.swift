//
//  ViewController.swift
//  Postcard
//
//  Created by Павел on 22.01.15.
//  Copyright (c) 2015 Павел. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        sendMessageButton.setTitle("Message sent", forState: UIControlState.Normal)
        sendMessageButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector: "updateSendMessageButton", userInfo: nil, repeats: false)
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
    }

    func updateSendMessageButton(){
        sendMessageButton.setTitle("Send message", forState: UIControlState.Normal)
        sendMessageButton.setTitleColor(self.view.tintColor, forState: UIControlState.Normal)
        
    }
    
    @IBAction func enterNameTextFieldEdited(sender: UITextField) {
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
    }
    
    
    @IBAction func enterMessageFieldEdited(sender: UITextField) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
    }
}


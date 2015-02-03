//
//  ViewController.swift
//  DrunkTipper
//
//  Created by William Wettersten on 2/2/15.
//  Copyright (c) 2015 William Wettersten. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var drunk: UISwitch!
    @IBOutlet weak var total: UILabel!
    @IBOutlet var isDrunk: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        if (drunk.on) {
            tip.text = "??"
            total.text = "( ͡° ͜ʖ ͡°)"
        } else {
            var amount = (bill.text as NSString).floatValue
            tip.text = "$\(amount * 0.2)"
            total.text = "$\(amount * 1.2)"
        }
    }
    @IBAction func drunkChanged(sender: AnyObject) {
        var amount = (bill.text as NSString).doubleValue
        
        if (drunk.on) {
            tip.text = "???"
            total.text = "( ͡° ͜ʖ ͡°)"
        } else {
            var amount = (bill.text as NSString).floatValue
            tip.text = "$\(amount * 0.2)"
            total.text = "$\(amount * 1.2)"
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        bill.resignFirstResponder()
    }
}


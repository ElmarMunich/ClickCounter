//
//  ViewController.swift
//  ClickCounter
//
//  Created by ELMAR BAYER on 15.06.18.
//  Copyright © 2018 ELMAR BAYER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // label
    }
    
    // Outlet: method invocation from Viewcontoller to view
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }

}


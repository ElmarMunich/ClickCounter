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
    var label: UILabel!
    var labeltwo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.backgroundColor = UIColor.white
        label.text = "0"
        label.textAlignment = .center
        view.addSubview(label)
        self.label = label
        
        let labeltwo = UILabel()
        labeltwo.frame = CGRect(x: 150, y: 100, width: 60, height: 60)
        labeltwo.text = "0"
        labeltwo.textAlignment = .center
        labeltwo.backgroundColor = UIColor.yellow
        view.addSubview(labeltwo)
        self.labeltwo = labeltwo
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 250, width: 160, height: 50)
        button.setTitle("Increment", for: .normal)
        button.backgroundColor = UIColor.yellow
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
     
        // call back method / action: method invocation from view back to viewcontroller
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        let buttondecr = UIButton()
        buttondecr.frame = CGRect(x: 100, y: 350, width: 160, height: 50)
        buttondecr.backgroundColor = UIColor.white
        buttondecr.setTitle("Decrement", for: .normal)
        buttondecr.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(buttondecr)
        
         buttondecr.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
    }
    
    // Outlet: method invocation from Viewcontoller to view
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.labeltwo.text = "\(self.count)"
        self.view.backgroundColor = UIColor.init(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1)
      
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.view.backgroundColor = UIColor.init(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1)
 //       self.labeltwo.text = "\(self.count)"
    }

  

}


//
//  ViewController.swift
//  DiceRoller
//
//  Created by Lasse Hansen on 01.02.18.
//  Copyright © 2018 Lasse Hansen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var resultLabel = UILabel(frame: CGRect(x: 10, y: 100, width: 100, height: 36))
    var testLabel = UILabel(frame: CGRect(x: 120, y: 100, width: 100, height: 36))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rollButton = UIButton(frame: CGRect(x: 10, y: 50, width: 100, height: 36))
        rollButton.setTitle("Roll", for: .normal)
        rollButton.addTarget(self, action: #selector(rollClicked), for: .touchUpInside)
        rollButton.setTitleColor(.black, for: .normal)
        rollButton.backgroundColor = .green
        view.addSubview(rollButton)
        view.addSubview(resultLabel)
        
        let testButton = UIButton(frame: CGRect(x: 120, y: 50, width: 100, height: 36))
        testButton.setTitle("Test", for: .normal)
        testButton.addTarget(self, action: #selector(testClicked), for: .touchUpInside)
        testButton.setTitleColor(.black, for: .normal)
        testButton.backgroundColor = .red
        view.addSubview(testButton)
        view.addSubview(testLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func rollClicked() {
        resultLabel.text = "\(roll1D6())"
    }
    
    @objc func testClicked() {
        testLabel.text = "Success"
    }
}


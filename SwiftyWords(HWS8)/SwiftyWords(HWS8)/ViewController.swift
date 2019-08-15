//
//  ViewController.swift
//  SwiftyWords(HWS8)
//
//  Created by Jerrick Warren on 8/15/19.
//  Copyright © 2019 Jerrick Warren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Make some UILabels
    
    var cluesLabel: UILabel!
    var answersLabel: UILabel!
    var currentAnswer: UILabel!
    var scoreLabel: UILabel!
    var letterButtons = [UIButton]()
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .orange
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


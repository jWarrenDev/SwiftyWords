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
    
       // instantiate labels and alignment.
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false // make the constraints by hand
        scoreLabel.textAlignment = .right
        scoreLabel.text = "Score: 0"
        scoreLabel.sizeToFit()
        view.addSubview(scoreLabel)
        
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.text = "CLUES"
        cluesLabel.numberOfLines = 0
        view.addSubview(cluesLabel)
        
        answersLabel = UILabel()
        answersLabel.translatesAutoresizingMaskIntoConstraints = false
        answersLabel.font = UIFont.systemFont(ofSize: 24)
        answersLabel.text = "ANSWERS"
        answersLabel.numberOfLines = 0
        view.addSubview(answersLabel)
        
        
        // NSConstraints
        // labels start at the top left.  Lets constrain them.
        // remember that activate takes an array
        NSLayoutConstraint.activate([
            
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
            cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),
            
            answersLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            answersLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
            answersLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),
            answersLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor)
            
            ])
        
            cluesLabel.backgroundColor   = .purple
            answersLabel.backgroundColor = .yellow
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


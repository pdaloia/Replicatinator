//
//  ViewController.swift
//  Replicatinator
//
//  Created by Philip D'Aloia on 2024-04-09.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Replicatinator"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.titleLabel)
        
        NSLayoutConstraint.activate([
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }


}


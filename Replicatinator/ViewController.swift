//
//  ViewController.swift
//  Replicatinator
//
//  Created by Philip D'Aloia on 2024-04-09.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Views
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Replicatinator"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var uiKitButton: UIButton = {
        let button = UIButton()
        button.setTitle("UIKit", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(uiKitButtonPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var swiftUIButton: UIButton = {
        let button = UIButton()
        button.setTitle("SwiftUI", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(swiftUIButtonPressed), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        self.setupLandingView()
    }
    
    //MARK: - Functions
    
    private func setupLandingView() {
        
        self.view.addSubview(self.titleLabel)
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.titleLabel.bottomAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
        self.view.addSubview(self.uiKitButton)
        NSLayoutConstraint.activate([
            self.uiKitButton.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 10),
            self.uiKitButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.uiKitButton.trailingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -10)
        ])
        
        self.view.addSubview(self.swiftUIButton)
        NSLayoutConstraint.activate([
            self.swiftUIButton.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 10),
            self.swiftUIButton.leadingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 10),
            self.swiftUIButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10)
        ])
        
    }
    
    @objc private func uiKitButtonPressed() {
        
        print("UIKit pressed")
        
    }
    
    @objc private func swiftUIButtonPressed() {
        
        print("SwiftUI pressed")
        
    }

}


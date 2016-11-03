//
//  ContentHuggingVC.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/10/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class ContentHuggingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    // HUGGING!
        let nameLabel = UILabel()
        nameLabel.text = "UILabel"
        nameLabel.backgroundColor = UIColor.red
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        let nameField  = UITextField()
        nameField.placeholder = "Enter name!"
        nameField.backgroundColor = UIColor.lightGray
        nameField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameField)
        
        let nameFieldConstraints: [NSLayoutConstraint] = [
            nameField.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 20),
            nameField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        ]
        NSLayoutConstraint.activate(nameFieldConstraints)
        
        
        let nameLabelConstraints: [NSLayoutConstraint] = [
            nameLabel.trailingAnchor.constraint(equalTo: nameField.leadingAnchor),
            nameLabel.firstBaselineAnchor.constraint(equalTo: nameField.firstBaselineAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
        ]
        NSLayoutConstraint.activate(nameLabelConstraints)
        nameLabel.setContentHuggingPriority(251, for: .horizontal)
        
        
    // COMPRESSION!
        let compButton = UIButton()
        compButton.setTitle("Button", for: .normal)
        compButton.backgroundColor = UIColor.cyan
        view.addSubview(compButton)
        compButton.translatesAutoresizingMaskIntoConstraints = false
        
        let compLabel = UILabel()
        compLabel.text = "Realllllllllllllllllly looooooonggg!!!!!!!!!!!!!!!"
        compLabel.backgroundColor = UIColor.blue
        view.addSubview(compLabel)
        compLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let constraints: [NSLayoutConstraint] = [
            compButton.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 200),
            compButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            compLabel.leadingAnchor.constraint(equalTo: compButton.trailingAnchor),
            compLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            compLabel.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 200)
        ]
        NSLayoutConstraint.activate(constraints)
        compLabel.setContentCompressionResistancePriority(751, for: .horizontal)
        
        
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

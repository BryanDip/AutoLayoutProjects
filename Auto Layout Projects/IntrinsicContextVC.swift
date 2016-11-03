//
//  IntrinsicContextVC.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/10/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class IntrinsicContextVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nameLabel = UILabel()
        nameLabel.text = "UILabel"
        nameLabel.backgroundColor = UIColor.red
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        let nameLabelConstraints: [NSLayoutConstraint] = [
            nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ]
        NSLayoutConstraint.activate(nameLabelConstraints)
        
        let textView = UITextView()
        textView.text = "gwreffevrgb evqbtrbergf2gt kojnmjpinobihijpn veqfewgberg3r njbhiuijonbihijnouhji rg343trnyhy5h657u6 jihnoihvghuyvgh"
        textView.backgroundColor = UIColor.brown
        textView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textView)
        let textViewConstraints: [NSLayoutConstraint] = [
            textView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            textView.widthAnchor.constraint(equalToConstant: 200),
            textView.heightAnchor.constraint(equalToConstant: 100)
        ]
        NSLayoutConstraint.activate(textViewConstraints)
        textView.isScrollEnabled = true
        
        
        let button = UIButton()
        button.setTitle("UIButton", for: .normal)
        button.backgroundColor = UIColor.cyan
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        let buttonConstraints: [NSLayoutConstraint] = [
            button.leadingAnchor.constraint(equalTo: textView.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: textView.bottomAnchor)
        ]
        NSLayoutConstraint.activate(buttonConstraints)
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

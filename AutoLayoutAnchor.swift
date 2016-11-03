//
//  AutoLayoutAnchor.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/7/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class AutoLayoutAnchor: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blueBox = UIView()
        view.addSubview(blueBox)
        blueBox.backgroundColor = UIColor.blue
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.widthAnchor.constraint(equalToConstant: 200).isActive = true
        blueBox.heightAnchor.constraint(equalToConstant: 100).isActive = true
        blueBox.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        blueBox.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        let button = UIButton()
        button.setTitle("play again", for: .normal)
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: blueBox.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: blueBox.centerYAnchor).isActive = true
        
        let label = UILabel()
        label.text = "git party"
        label.backgroundColor = UIColor.cyan
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        //label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label.rightAnchor.constraint(equalTo: button.rightAnchor, constant: 10).isActive = true
        label.lastBaselineAnchor.constraint(equalTo: button.bottomAnchor).isActive = true
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

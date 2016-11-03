//
//  ConstraintsVC.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/7/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class ConstraintsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let redBox = UIView()
        
        redBox.backgroundColor = UIColor.red
        
        redBox.topAnchor.constraint(equalTo: view.topAnchor)
        redBox.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        redBox.leftAnchor.constraint(equalTo: view.leftAnchor)
        redBox.rightAnchor.constraint(equalTo: view.rightAnchor)
        
        redBox.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(redBox)
        
        redBox.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        redBox.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        redBox.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        redBox.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
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

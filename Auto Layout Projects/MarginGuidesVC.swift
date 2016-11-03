//
//  MarginGuidesVC.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/10/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class MarginGuidesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let box = UIView()
        box.backgroundColor = UIColor.red
        box.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(box)
        let boxConstraints: [NSLayoutConstraint] = [
            box.widthAnchor.constraint(equalToConstant: 200),
            box.heightAnchor.constraint(equalToConstant: 100),
            box.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            box.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor)
        ]
        NSLayoutConstraint.activate(boxConstraints)
        
        let blueBox = UIView()
        blueBox.backgroundColor = UIColor.blue
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueBox)
        box.layoutMargins.left = 30
        let blueBoxConstraints: [NSLayoutConstraint] = [
            blueBox.widthAnchor.constraint(equalToConstant: 100),
            blueBox.heightAnchor.constraint(equalToConstant: 50),
            blueBox.leadingAnchor.constraint(equalTo: box.layoutMarginsGuide.leadingAnchor),
            blueBox.bottomAnchor.constraint(equalTo: box.layoutMarginsGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(blueBoxConstraints)
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

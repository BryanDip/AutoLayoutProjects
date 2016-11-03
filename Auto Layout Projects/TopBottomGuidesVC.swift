//
//  TopBottomGuidesVC.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/10/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class TopBottomGuidesVC: UIViewController {

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
            box.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(boxConstraints)
        
        let blueBox = UIView()
        blueBox.backgroundColor = UIColor.blue
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueBox)
        let blueBoxConstraints: [NSLayoutConstraint] = [
        blueBox.widthAnchor.constraint(equalToConstant: 200),
        blueBox.heightAnchor.constraint(equalToConstant: 100),
        blueBox.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        blueBox.bottomAnchor.constraint(equalTo: bottomLayoutGuide.bottomAnchor)
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

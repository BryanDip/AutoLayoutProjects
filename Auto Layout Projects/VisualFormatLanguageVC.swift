//
//  VisualFormatLanguageVC.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/28/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class VisualFormatLanguageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    // Visual Format Language (VFL)
        
        let myView = UIView()
        myView.backgroundColor = UIColor.red
        myView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myView)
        
        let views = ["myView" : myView, "super" : view]
        
        let constraints1 = NSLayoutConstraint.constraints(withVisualFormat: "|[myView]|", options: .alignAllTop, metrics: nil, views: views)
        let constraints2 = NSLayoutConstraint.constraints(withVisualFormat: "V:[myView(50)]|", options: .alignAllTop, metrics: nil, views: views)
        
        NSLayoutConstraint.activate(constraints1)
        NSLayoutConstraint.activate(constraints2)
        
        
    // VFL Spacing between views
        
        let button1 = UIButton()
        button1.backgroundColor = UIColor.green
        button1.setTitle("buton1", for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button1)
        
        let button2 = UIButton()
        button2.backgroundColor = UIColor.yellow
        button2.setTitle("button2", for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button2)
        
        let views1 = ["button1" : button1, "button2" : button2]
        
        let constraints3 = NSLayoutConstraint.constraints(withVisualFormat: "|-50-[button1]-30-[button2]", options: .alignAllTop, metrics: nil, views: views1)
        let constraints4 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[button1]", options: .alignAllTop, metrics: nil, views: views1)
        NSLayoutConstraint.activate(constraints3)
        NSLayoutConstraint.activate(constraints4)
        
        button2.heightAnchor.constraint(equalToConstant: 100).isActive = true
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

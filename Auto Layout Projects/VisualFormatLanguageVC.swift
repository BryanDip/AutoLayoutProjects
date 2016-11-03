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
        
        let myView = UIView()
        myView.backgroundColor = UIColor.red
        myView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myView)
        
        let views = ["myView" : myView]
        
        let constraints1 = NSLayoutConstraint.constraints(withVisualFormat: "[myView(100,<=50)]|", options: .alignAllTop, metrics: nil, views: views)
        let constraints2 = NSLayoutConstraint.constraints(withVisualFormat: "V:[myView(50)]|", options: .alignAllTop, metrics: nil, views: views)
        
        NSLayoutConstraint.activate(constraints1)
        NSLayoutConstraint.activate(constraints2)
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

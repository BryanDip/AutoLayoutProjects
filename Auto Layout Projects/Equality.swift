//
//  Equality.swift
//  Auto Layout Projects
//
//  Created by Bayan on 10/10/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class Equality: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //  Auto Layout Equality
         let subView = UIView()
         subView.backgroundColor = UIColor.blue
         subView.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(subView)
         subView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
         subView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
         subView.heightAnchor.constraint(equalToConstant: 100).isActive = true
         
         subView.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor).isActive = true
         
         subView.widthAnchor.constraint(greaterThanOrEqualToConstant: 100).isActive = true
 
        
/*           Unsatisfiable Constraints
        let subView = UIView()
        subView.backgroundColor = UIColor.cyan
        subView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subView)
        
        let constraints: [NSLayoutConstraint] = [
            subView.topAnchor.constraint(equalTo: view.topAnchor),
            subView.leftAnchor.constraint(equalTo: view.leftAnchor),
            subView.heightAnchor.constraint(equalToConstant: 100),
            subView.widthAnchor.constraint(equalToConstant: 375),
            subView.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
 */
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

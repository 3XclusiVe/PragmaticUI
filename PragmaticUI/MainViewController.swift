//
//  MainViewController.swift
//  PragmaticUI
//
//  Created by Дмитрий on 12.05.18.
//  Copyright © 2018 Дмитрий. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create Views
        let view = UIView()
        view.clearsContextBeforeDrawing = false
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        let button = UIButton(type: .roundedRect)
        button.titleLabel?.lineBreakMode = .byTruncatingMiddle
        button.isOpaque = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
        
        // Assemble View Hierarchy
        view.addSubview(button)
        
        // Configure Constraints
        NSLayoutConstraint(
            item: button,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        NSLayoutConstraint(
            item: button,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerY,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Remaining Configuration
        self.view = view

        // Do any additional setup after loading the view.
    }
    
    // MARK: - UI Actions
    @objc func buttonPressed() {
        // Print Hello followed by the user inputed string
        // The exclamation point is added to unwrap the optional
        print("presed")
        
        let vc = ViewController()
        self.present(vc, animated: true, completion: nil)
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

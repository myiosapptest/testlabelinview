//
//  ViewController.swift
//  testlabelinview
//
//  Created by Ron Rith on 2/13/19.
//  Copyright © 2019 Ron Rith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewSubView: UIView!
    var viewTestView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 500))
        
        let centerView = UIView()
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        
        view.addSubview(centerView)
        
        centerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        centerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        centerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        centerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Testing"
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.yellow
        
        centerView.addSubview(label)
        
        label.leftAnchor.constraint(equalTo: centerView.leftAnchor).isActive = true
        label.topAnchor.constraint(equalTo: centerView.topAnchor).isActive = true
        
        self.view.layoutIfNeeded()
        self.view.addSubview(view)
    }
}


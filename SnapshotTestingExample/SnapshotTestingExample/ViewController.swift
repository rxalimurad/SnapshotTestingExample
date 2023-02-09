//
//  ViewController.swift
//  SnapshotTestingExample
//
//  Created by Ali Murad on 09/02/2023.
//

import UIKit

class ViewController: UIViewController {

    var isDarkTheme: Bool = false {
        didSet {
            self.view.backgroundColor = isDarkTheme ? UIColor.black : UIColor.white
            self.label.textColor = isDarkTheme ? UIColor.white : UIColor.black
        }
    }
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


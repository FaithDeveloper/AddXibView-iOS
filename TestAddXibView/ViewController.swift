//
//  ViewController.swift
//  TestAddXibView
//
//  Created by sigong_shin on 2017. 6. 21..
//  Copyright © 2017년 kcs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var addScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let custom = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?[0] as! CustomView
        
        self.addScrollView.addSubview(custom)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


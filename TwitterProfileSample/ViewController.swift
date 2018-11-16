//
//  ViewController.swift
//  TwitterProfileSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedButton(_ sender: Any) {
        present(DetailViewController(), animated: true, completion: nil)
    }
    
}


//
//  HeaderView.swift
//  ScrollViewAutoLayoutSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import UIKit

class HeaderView: TouchTransparentView {

    @IBOutlet weak var imageView: UIImageView!
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            // handling code
            print(#function)
        }
    }
    
    @objc func handlePan(_ sender: UIPanGestureRecognizer) {
        if sender.state == .ended {
            // handling code
            print(#function)
        }
    }
    
    override func awakeFromNib() {
        layer.borderWidth = 4
        layer.borderColor = UIColor.black.cgColor
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        imageView.addGestureRecognizer(tap)
        imageView.addGestureRecognizer(pan)
    }

    @IBAction func tappedButton(_ sender: Any) {
        print("\(HeaderView.self)")
    }
}

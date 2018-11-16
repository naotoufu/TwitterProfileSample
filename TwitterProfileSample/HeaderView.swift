//
//  HeaderView.swift
//  TwitterProfileSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import UIKit

class HeaderView: TouchTransparentView {
    
    override func awakeFromNib() {
        layer.borderWidth = 4
        layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func tappedButton(_ sender: Any) {
        print("\(HeaderView.self)")
    }
}

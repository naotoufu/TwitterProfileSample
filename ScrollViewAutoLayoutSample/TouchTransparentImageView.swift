//
//  TouchTransparentImageView.swift
//  ScrollViewAutoLayoutSample
//
//  Created by NaotoIto on 2018/11/15.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import UIKit

class TouchTransparentImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override public func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitView = super.hitTest(point, with: event)
        
        guard hitView !== self else {
            return nil
        }
        return hitView
    }

}

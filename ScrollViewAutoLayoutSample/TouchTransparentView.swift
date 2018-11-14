//
//  TouchTransparentView.swift
//  ScrollViewAutoLayoutSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018 NaotoIto. All rights reserved.
//

import Foundation
import UIKit
public class TouchTransparentView: UIView {
    
    override public func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitView = super.hitTest(point, with: event)
        
        guard hitView !== self else {
            return nil
        }
        return hitView
    }
}

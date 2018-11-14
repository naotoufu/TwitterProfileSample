//
//  HeaderViewDelegate.swift
//  ScrollViewAutoLayoutSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import Foundation
import UIKit

protocol HeaderViewDelegate : class {
    func headerInScrollViewDidScroll(_ scrollView: UIScrollView)
}

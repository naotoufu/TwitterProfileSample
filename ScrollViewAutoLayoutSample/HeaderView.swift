//
//  HeaderView.swift
//  ScrollViewAutoLayoutSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    weak var delegate : HeaderViewDelegate?
    
    var scrollView: UIScrollView! = UIScrollView(frame: UIScreen.main.bounds)
    
    override func awakeFromNib() {
        layer.borderWidth = 4
        layer.borderColor = UIColor.black.cgColor
        addSubview(scrollView)
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height * 3)
        scrollView.delegate = self
    }
    
    override func updateConstraints() {
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        super.updateConstraints()
    }

    @IBAction func tappedButton(_ sender: Any) {
        print("\(HeaderView.self)")
    }
}

extension HeaderView : UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.frame.origin.y = -scrollView.contentOffset.y
        delegate?.headerInScrollViewDidScroll(scrollView)
    }
}

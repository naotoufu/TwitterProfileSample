//
//  DetailViewController.swift
//  ScrollViewAutoLayoutSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var headerView : HeaderView!
    var pageViewController : UIPageViewController!
    let childViewController = PageInnerTableViewController()
    var isWaistScroll = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        self.addChild(pageViewController)
        view.addSubview(pageViewController.view)
        pageViewController.didMove(toParent: self)
        pageViewController.setViewControllers([childViewController], direction: .forward, animated: true, completion: nil)
        pageViewController.dataSource = self

        headerView = UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? HeaderView
        view.addSubview(headerView)
        headerView.delegate = self
    }
    
    override func viewWillLayoutSubviews() {
        headerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 400)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return PageInnerTableViewController()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
         return PageInnerTableViewController()
    }
    
    
}

extension DetailViewController : HeaderViewDelegate {
    func headerInScrollViewDidScroll(_ scrollView: UIScrollView) {
        isWaistScroll = true
        childViewController.tableView.contentOffset.y += scrollView.contentOffset.y
    }
}

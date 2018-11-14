//
//  PageInnerTableViewController.swift
//  ScrollViewAutoLayoutSample
//
//  Created by NaotoIto on 2018/11/14.
//  Copyright © 2018年 NaotoIto. All rights reserved.
//

import UIKit

class PageInnerTableViewController: UITableViewController {
    
    lazy var detailViewController = self.parent!.parent as! DetailViewController
    lazy var pageViewController = self.parent as! UIPageViewController
    var isWaistScroll : Bool {
        get {
            return detailViewController.isWaistScroll
        }
        set {
            detailViewController.isWaistScroll = newValue
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset.top = 400
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 100
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(indexPath.item)"

        // Configure the cell...

        return cell
    }
    
    var firstAppear : Bool = true
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard !firstAppear else {
            firstAppear = false
            return
        }
        guard !isWaistScroll else {
            isWaistScroll = false
            return
        }
        // default -(-400 + 400)
        detailViewController.headerView.frame.origin.y = -(scrollView.contentOffset.y + scrollView.contentInset.top)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}

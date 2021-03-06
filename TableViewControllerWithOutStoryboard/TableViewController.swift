//
//  TableViewController.swift
//  TableViewControllerWithOutStoryboard
//
//  Created by Panyushenko on 06.04.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "reuseIdentifier")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return TableData.sharedInstance.items.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TableData.sharedInstance.items[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! TableViewCell
        let imageTree = TableData.sharedInstance.items[indexPath.section][indexPath.row]
        cell.imageForCell.image = UIImage(named: imageTree)
        cell.labelForSection.text = "Section \(indexPath.section) Row \(indexPath.row)\nName \(imageTree)"
        
        cell.accessoryType = .disclosureIndicator
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let imageTree = TableData.sharedInstance.items[indexPath.section][indexPath.row]
        
        let treeVC = TreeViewController()
        treeVC.treeName = imageTree
        treeVC.view.backgroundColor = .white
        treeVC.title = "Section \(indexPath.section) Row \(indexPath.row)"
        self.navigationController?.pushViewController(treeVC, animated: true)
        
        
    }
    
}

//
//  TreeViewController.swift
//  TableViewControllerWithOutStoryboard
//
//  Created by Panyushenko on 06.04.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class TreeViewController: UIViewController {

    var treeName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let treeName = treeName else {return}
        
        let titleLabel = UILabel()
        titleLabel.text = treeName
        titleLabel.center = CGPoint(x: 140, y: 100)
        titleLabel.frame.size = CGSize(width: 100, height: 30)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 20)
        self.view.addSubview(titleLabel)
  
        let imageTree = UIImageView()
        imageTree.image = UIImage(named: treeName)
        
        //imageTree.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //SnapKit - library
        //imageTree.frame.size = CGSize(width: 200, height: 200)
        imageTree.frame = CGRect(x: 70, y: 150, width: 240, height: 240)
        self.view.addSubview(imageTree)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

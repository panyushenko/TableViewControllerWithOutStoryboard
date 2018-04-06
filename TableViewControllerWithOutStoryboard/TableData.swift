//
//  TableData.swift
//  TableViewControllerWithOutStoryboard
//
//  Created by Panyushenko on 06.04.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import Foundation
class TableData {
    static let sharedInstance = TableData()
    
    private(set) var items = [["tree1","tree2","tree3","tree4"],["tree5","tree6","tree7","tree8"],["tree9","tree10","tree11","tree12"]]
}

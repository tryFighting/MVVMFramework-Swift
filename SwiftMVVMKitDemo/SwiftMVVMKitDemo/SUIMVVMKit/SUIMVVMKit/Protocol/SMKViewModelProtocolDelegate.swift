//
//  SMKViewModelProtocolDelegate.swift
//  SwiftMVVMKitDemo
//
//  Created by yuantao on 16/3/7.
//  Copyright © 2016年 momo. All rights reserved.
//

import Foundation

@objc public protocol SMKViewModelProtocolDelegate: NSObjectProtocol {
    
    /**
     返回指定indexPath的item
     
     - parameter indexPath: indexPath description
     
     - returns: return value description
     */
    optional func smk_viewModelWithIndexPath(indexPath: NSIndexPath) -> NSObject
    
    /**
     每组中显示多少行 (用于tableView)
     
     - parameter section: section description
     
     - returns: return value description
     */
    optional func smk_viewModelWithNumberOfRowsInSection(section: Int) -> Int
    
    /**
     每组中显示多少个 (用于collectionView)
     
     - parameter section: section description
     
     - returns: return value description
     */
    optional func smk_viewModelWithNumberOfItemsInSection(section: Int) -> Int
    
}
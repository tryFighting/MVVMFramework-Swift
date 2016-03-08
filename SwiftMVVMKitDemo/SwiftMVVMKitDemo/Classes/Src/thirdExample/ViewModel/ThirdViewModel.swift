//
//  ThirdViewModel.swift
//  SwiftMVVMKitDemo
//
//  Created by Mac on 16/3/7.
//  Copyright © 2016年 momo. All rights reserved.
//

import UIKit
import SUIMVVMNetwork

class ThirdViewModel: SMKBaseViewModel {
    
    internal func getRandomData() -> NSObject? {
        if smk_dataArrayList.count > 0 {
            let index = arc4random_uniform(UInt32(self.smk_dataArrayList.count))
            return smk_dataArrayList[Int(index)] as? NSObject
        }
        return nil
    }
    
    override func smk_viewModelWithGetDataSuccessHandler(successHandler: (() -> ())?) {
        let url = "http://news-at.zhihu.com/api/4/news/latest"
        SMKHttp.get(url, params: nil, success: { (json: AnyObject!) -> Void in
            
            let array = json["stories"]
            self.smk_dataArrayList = ThirdModel.mj_objectArrayWithKeyValuesArray(array)
            if let _ = successHandler {
                successHandler!()
            }
            }) { (error: NSError!) -> Void in
                
        }

    }
}

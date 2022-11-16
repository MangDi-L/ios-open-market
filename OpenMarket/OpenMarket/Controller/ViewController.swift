//
//  OpenMarket - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    let networkModel: NetworkModel = NetworkModel()
    var products: Products?
    var parsingTarget1: ParsingTarget1?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        networkModel.transmit(setUrl: SetUrl.viewDetailItem)

        
        self.parsingTarget1 = networkModel.transmit_withTarget1(setUrl: SetUrl.viewAllItemList)

        
        print(parsingTarget1?.pages[0])
        sleep(15)
        print(parsingTarget1?.pages[0])
    }


    
}

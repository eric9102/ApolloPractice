//
//  ViewController.swift
//  ApolloPractice
//
//  Created by cbs on 2019/9/25.
//  Copyright © 2019 cbs. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadData()
    }


    func loadData() {
 
        let apollo = ApolloClient(url: URL(string: "https://wechattest.yunpub.cn/api/graphql")!)
        
        apollo.fetch(query: HomeBannerQuery()) { result in
            guard let data = try? result.get().data else { return }
            print(data.homeBanner!)
        }
        
    }
    
}


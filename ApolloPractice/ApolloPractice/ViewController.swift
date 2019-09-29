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
        
//        loadMeData()
//        loadEditorRecommend()
        
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        
        self .loadEditorRecommend()
        
    }
    
    func loadData() {
 
        let apollo = YYApollo.shared.client
        
        apollo.fetch(query: HomeBannerQuery()) { result in
            guard let data = try? result.get().data else { return }
            print(data.homeBanner!)
        }
        
    }
    
    func loadMeData() {
        let apollo = YYApollo.shared.client
        
        apollo.fetch(query: MeQuery()) { result in
            guard let data = try? result.get().data else { return }
            print(data.me!)
        }
    }
    
    func loadEditorRecommend() {
        
        let apollo = YYApollo.shared.client
        
        apollo.fetch(query: ItemQuery(id: 4596, isbn: "4596")) { result in
            
            guard let data = try? result.get().data else { return }
            print(data.userGood!)
            
        }
        
        
    }
    
}


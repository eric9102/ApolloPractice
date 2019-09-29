//
//  Apollo.swift
//  ApolloPractice
//
//  Created by cbs on 2019/9/26.
//  Copyright © 2019 cbs. All rights reserved.
//

import Apollo


// MARK: - Singleton Wrapper

class YYApollo {
    static let shared = YYApollo()
    
    // Configure the network transport to use the singleton as the delegate.
    private lazy var networkTransport = HTTPNetworkTransport(
        url: URL(string: "https://wechattest.yunpub.cn/api/graphql?")!,
        delegate: self
    )
    
    // Use the configured network transport in your client.
    private(set) lazy var client = ApolloClient(networkTransport: self.networkTransport)
}

// MARK: - Pre-flight delegate

extension YYApollo: HTTPNetworkTransportPreflightDelegate {
    
    func networkTransport(_ networkTransport: HTTPNetworkTransport,
                          shouldSend request: URLRequest) -> Bool {
        // If there's an authenticated user, send the request. If not, don't.
        return true
    }
    
    func networkTransport(_ networkTransport: HTTPNetworkTransport,
                          willSend request: inout URLRequest) {
        
        // Get the existing headers, or create new ones if they're nil
        var headers = request.allHTTPHeaderFields ?? [String: String]()
        
        // Add any new headers you need
        headers["authority"] = "wechattest.yunpub.cn"
        headers["user-agent"] = "Mozilla/5.0 (iPhone; CPU iPhone OS 12_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.5(0x17000523) NetType/WIFI Language/zh_CN"
        
        // Re-assign the updated headers to the request.
        request.allHTTPHeaderFields = headers
        
        
        var bodyDict = dataToDictionary(data: request.httpBody!)
        var variables: [String: String] = [:]
        
        variables.updateValue("a756616399d8958cbc47010fb6b062fdfdb6c303c637bfa0f00cd9b6939767f6", forKey: "token")
        variables.updateValue("4596", forKey: "id")
        variables.updateValue("3.2.0", forKey: "ver")
        
        bodyDict?.updateValue(variables, forKey: "variables")
        request.httpBody = jsonToData(jsonDic: bodyDict!)
        
        
    }
}


// MARK: Data转Dictionary

func dataToDictionary(data:Data) ->Dictionary<String, Any>?{
    
    do{
        
        let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        
        let dic = json as! Dictionary<String, Any>
        
        return dic
        
    }catch _ {
        
        print("失败")
        
        return nil
        
    }
    
}


// MARK: Dictionary转Data

func jsonToData(jsonDic:Dictionary<String, Any>) -> Data? {
    
    if (!JSONSerialization.isValidJSONObject(jsonDic)) {
        
        print("is not a valid json object")
        
        return nil
        
    }
    
    //利用自带的json库转换成Data
    //如果设置options为JSONSerialization.WritingOptions.prettyPrinted，则打印格式更好阅读
    
    let data = try? JSONSerialization.data(withJSONObject: jsonDic, options: [])
    
    return data
    
}

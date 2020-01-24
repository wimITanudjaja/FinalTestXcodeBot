//
//  AlamofireHelper.swift
//  FinalTestXcodeBot
//
//  Created by Sean Rada on 1/24/20.
//  Copyright © 2020 Rigil. All rights reserved.
//

import UIKit
import Alamofire

class AlamofireHelper: NSObject {

    
    func requestBlueSheetDynamicForms(urlExtension: String, bidId: Int, completion: @escaping (_ success: Bool, _ response: HTTPURLResponse) -> Void) {
    
            let fullURL = " "
    
            let bearer = "bearer "
            let header = [
                "Authorization": bearer
                ] as HTTPHeaders
    
            Alamofire.request(fullURL, method: .get, encoding: JSONEncoding.default, headers:header).validate().responseJSON { response in
    
                let code = response.response?.statusCode ?? 0
                print("DataManager - Request BlueSheet - HTML Code : \(code)")
    
                if (code == 401 || code == 500)   {
    
                }
    
                if code == 404 {
                    print("DataManager - Request Blue sheet error 404")
                    //SwiftMessagesHelper.showError(message: SwiftErrorMessage.failShowBlueSheet.rawValue)
    
                }
    
                switch response.result {
    
                case .success(let value):
    
    
                    print("show the value: \(value)")
    
    
                    if response.response != nil {
                        completion(true, response.response!)
                    }
                case .failure(let error):
    
                     print("show the error for Blue Sheet: \(error)")
    
                     if response.response != nil {
                        completion(false, response.response!)
                     } else {
    
                    }
    
                }
            }
    
        }
    
}

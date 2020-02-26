//
//  ServiceProviderService.swift
//  ServiceProviders
//
//  Created by Daniel Nathan Beyrer on 2/25/20.
//  Copyright © 2020 Daniel Nathan Beyrer. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ServiceProviderService {
    var url:String
    
    init() {
        self.url = "http://private-895ba-angieslistcodingchallenge.apiary-mock.com/angieslist/codingChallenge/serviceproviders";
    }
    
    // GET available restaurants // routes#show
//    func getServiceProviders(callback: (Array<Any>) -> ()) {
//        AF.request(self.url).responseJSON { response in
//            let jsonResponse = JSON(response.value!);
//            if let resData = jsonResponse["serviceproviders"].arrayObject {
//                debugPrint("resData:", resData)
//                callback(resData);
//            }
//        };
//    }
}

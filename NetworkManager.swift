//
//  NetworkManager.swift
//  Cricbuzz
//
//  Created by Ali Sher on 30/03/2022.
//

import UIKit
import Alamofire

class NetworkManager: NSObject {
    
    func WebService(url: String, parameter: Parameters?, method: HTTPMethod, encoding: URLEncoding, _ onSuccess: @escaping(NSDictionary) -> Void, onFailure: @escaping(Error) -> Void) {

        var headers: HTTPHeaders = [:]
        let params = parameter

        headers = ["Content-Type": "application/json",
                   "X-RapidAPI-Host": "unofficial-cricbuzz.p.rapidapi.com",
                    "X-RapidAPI-Key": "95dcadc4e0msh48e2edd6b344a4bp1f16acjsnb271914c0bff"]


        AF.request(url, method: method, parameters: params, encoding: encoding, headers: headers).responseJSON(completionHandler: { response in
        switch response.result {
            case .success(let JSON):
                let responseData = JSON as! NSDictionary
                print(responseData)
                onSuccess(responseData)


            case .failure(let error):
                print("\n\n===========Error===========")
                print("Error Code: \(error._code)")
                print("Error Messsage: \(error.localizedDescription)")
                if let data = response.data, let str = String(data: data, encoding: String.Encoding.utf8){
                    print("Server Error: " + str)
                }
                debugPrint(error as Any)
                print("===========================\n\n")

                print("Failure\(error.localizedDescription)")
                onFailure(error)
            }
        })
    }
}

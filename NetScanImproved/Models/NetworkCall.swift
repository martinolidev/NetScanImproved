//
//  NetworkCall.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import Foundation
import Alamofire

struct Ports: Codable {
    var portData: [String]
}

class NetworkCall {
    private var savedServerIP: String = UserDefaults.standard.string(forKey: "ipAddressServer") ?? ""
    var reponseData: Ports
    
    init() {
        reponseData = Ports(portData: [""])
    }
    
    func sendInformation(ip: String) -> Ports {
        AF.request("http://\(savedServerIP):8080/ip/\(ip)", method: .get).validate(statusCode: 200...299).responseDecodable(of: Ports.self) {
            response in
            
            if let content = response.value {
                self.reponseData = Ports(portData: content.portData)
            } else {
                print(response.error?.responseCode ?? "No code error")
            }
        }
        
        return reponseData
    }
}

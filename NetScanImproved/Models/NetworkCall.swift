//
//  NetworkCall.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import Foundation
import Alamofire

struct Ports: Codable {
    var portNumbers: [String]
}

class NetworkCall: ObservableObject {
    private var savedServerIP: String = UserDefaults.standard.string(forKey: "ipAddressServer") ?? "192.158.1.106"
    var ports: Ports?

    func getRequest(ipToScan: String) {
            AF.request("http://\(savedServerIP):8080/ip/\(ipToScan)", method: .get).validate(statusCode: 200...299).responseDecodable(of: Ports.self) { response in
                switch response.result {
                case .success(let ports):
                    DispatchQueue.main.async {
                        self.ports = ports
                    }
                case .failure(let error):
                    print("Error: \(error)")
                }
            }
    }
}

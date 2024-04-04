//
//  NetworkViewModel.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import Foundation


class NetworkViewModel: ObservableObject {
    init(ipScanned: String, portsScanned: Ports) {
        self.ipScanned = ""
        self.portsScanned = Ports(portData: [""])
    }
    
    @Published private var ipScanned: String
    @Published private var portsScanned: Ports
    let model = NetworkCall()
    
    func makeRequest(ip: String) {
        let reponse = model.getRequest(ipToScan: ip)
    }
}

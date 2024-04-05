//
//  NetworkViewModel.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import Foundation


class NetworkViewModel: ObservableObject {
    init() {
        self.ipScanned = ""
        self.portsScanned = Ports(portData: [""])
    }
    
    @Published var ipScanned: String
    @Published var portsScanned: Ports
    let model = NetworkCall()
    
    func makeRequest(ip: String) {
        portsScanned = model.getRequest(ipToScan: ip)
    }
}

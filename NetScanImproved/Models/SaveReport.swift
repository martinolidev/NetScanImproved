//
//  SaveReport.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import Foundation
import SwiftData

@Model
class SaveReport {
    
    init(ip: String, openPorts: [String]) {
        self.ip = ip
        self.openPorts = openPorts
    }
    
    var ip: String
    var openPorts: [String]
}

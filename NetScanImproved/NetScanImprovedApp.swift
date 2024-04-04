//
//  NetScanImprovedApp.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import SwiftUI
import SwiftData

@main
struct NetScanImprovedApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: SaveReport.self)
    }
}

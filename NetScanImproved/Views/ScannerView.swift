//
//  ScannerView.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import SwiftUI

struct ScannerView: View {
    @State private var ipAddress: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("IP Address: ")
                TextField("IP address to scan", text: $ipAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        .padding()
        .navigationTitle("NetScan")
    }
}

#Preview {
    ContentView()
}

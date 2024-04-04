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
            
            HStack {
                Spacer()
                Button("Save") {
                    //code to save in the database
                }
                .buttonStyle(BorderedButtonStyle())
                Button("Scan") {
                    //code here
                }
                .buttonStyle(BorderedButtonStyle())
            }
            
            
            Spacer()
        }
        .padding()
        .navigationTitle("NetScan")
        .toolbar {
            ToolbarItem{
                NavigationLink(destination: SettingsView()) {
                    Image(systemName: "gear")
                        .foregroundStyle(Color.accentColor)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

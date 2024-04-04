//
//  ScannerView.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import SwiftUI

struct ScannerView: View {
    @State private var ipAddress: String = ""
    @State private var showAlert: Bool = false
    
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
                    if ipAddress.isEmpty {
                        showAlert = true
                    }
                }
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("Empty Field!"), message: Text("You should give me and IP address to scan and then save the results."), dismissButton: .default(Text("OK")))
                })
                .buttonStyle(BorderedButtonStyle())
                Button("Scan") {
                    if ipAddress.isEmpty {
                        showAlert = true
                    }
                }
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("Empty Field!"), message: Text("You should give me an IP address to scan."), dismissButton: .default(Text("OK")))
                })
                .buttonStyle(BorderedButtonStyle())
            }
            
            HStack {
                Text("Results for: \(ipAddress)")
                    .font(.title2)
                    .bold()
                Spacer()
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

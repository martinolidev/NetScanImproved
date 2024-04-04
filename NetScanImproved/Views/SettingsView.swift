//
//  SettingsView.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var ipServer: String = ""
    
    var body: some View {
        VStack {
            Section {
                HStack {
                    TextField("IP address", text: $ipServer)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Save") {
                        UserDefaults.standard.set(ipServer, forKey: "MyKey")
                    }
                    .buttonStyle(BorderedButtonStyle())
                }
            } header: {
                HStack {
                    Text("IP address of the server")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
            } footer: {
                HStack {
                    Text("Available at my GitHub (martinolidev/api)")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    Spacer()
                }
            }
        }
        .padding()
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
}

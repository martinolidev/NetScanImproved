//
//  ReportsView.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import SwiftUI
import SwiftData

struct ReportsView: View {
    @Environment(\.modelContext) private var context
    @Query private var reports: [SaveReport]
    
    var body: some View {
        VStack {
            if reports.isEmpty {
                VStack {
                    Image(systemName: "plus.square.fill.on.square.fill")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .foregroundStyle(Color.accentColor)
                    
                    Text("Scan a device and then click save!")
                        .bold()
                        .font(.headline)
                }
            } else {
                List {
                    ForEach(reports) {
                        word in
                        Text("\(word.ip)")
                        Text("\(word.openPorts)")
                    }
                }.listStyle(PlainListStyle())
            }
        }
        .padding()
        .navigationTitle("My reports")
    }
}

#Preview {
    ContentView()
}

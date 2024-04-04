//
//  ContentView.swift
//  NetScanImproved
//
//  Created by Martin Martinez on 04/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ScannerView()
            }
            .tabItem {
                Text("Home")
                Image(systemName: "house")
            }
            NavigationView {
                ReportsView()
            }
            .tabItem {
                Text("Reports")
                Image(systemName: "doc.viewfinder.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

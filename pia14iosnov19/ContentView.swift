//
//  ContentView.swift
//  pia14iosnov19
//
//  Created by BillU on 2025-11-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Banan")
            Text("Mera text")
            Text("Rad tre")
            
            VStack {
                Text("Ny funktion")
            }
            .padding()
            .background(Color.cyan)
            
            Text("Mer nya saker")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

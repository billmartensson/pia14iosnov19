//
//  ContentView.swift
//  pia14iosnov19
//
//  Created by BillU on 2025-11-19.
//

import SwiftUI

struct ContentView: View {
    
    @State var mynumber: Int = 0
    
    func addnumbertext(nrtext : String) -> Int {
        let trimmed = nrtext.trimmingCharacters(in: .whitespacesAndNewlines)
        let number = Int(trimmed) ?? 0
        let timestwo = number * 2
        return timestwo
    }
    
    
    
    var body: some View {
        VStack {
            
            Text("\(mynumber)")
                .font(.largeTitle)
            
            
            HStack {
                Button("PLUS") {
                    mynumber += 1
                }
                Button("MINUS") {
                    mynumber -= 1
                }
                
                Button("RESET") {
                    mynumber = 0
                }
                
                Button("ADD 5") {
                    mynumber += 5
                    if mynumber > 20 {
                        mynumber = 0
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.yellow)
            .cornerRadius(24)
            .shadow(radius: 8)
            .padding(.top, 100)
            .padding(.bottom, 50)
            
            Button("ABC") {
                mynumber = 50
            }
            
            Button(action: {
                mynumber = 100
            }) {
                VStack {
                    Text("ABC")
                    Text("XYZ")
                }
                .padding()
                .background(Color("Fancyred"))
            }
            
            Image("frog")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 300)
                .clipped()
                .background(Color.red)
                .cornerRadius(50)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

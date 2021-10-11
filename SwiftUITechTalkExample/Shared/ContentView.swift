//
//  ContentView.swift
//  Shared
//
//  Created by Juan Manuel Gentili on 06/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var includeSalt = false
    @State private var includeRedPepper = false
    @State private var avocadoQuantity = 1
    @State private var isOrderCompleted = false
    
    var body: some View {
        ZStack {
            backgroundColor
            
            VStack {
                Text("Avocado Toast")
                    .font(.title)
                
                Toggle("Include Salt", isOn: $includeSalt)
                
                Toggle("Include Red Pepper", isOn: $includeRedPepper)
                
                Stepper(value: $avocadoQuantity, in: 1...10) {
                    Text("Quantity: \(avocadoQuantity)")
                }
                
                Text("hola chicos")
                
                Button(action: {
                    isOrderCompleted = true
                }, label: {
                    Text("Order")
                })
                
                if isOrderCompleted {
                    Text("🥑🥑🥑🥑🥑🥑🥑🥑🥑")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .animation(.easeOut)
                }
            }
            .foregroundColor(isOrderCompleted ? .gray : .black)
            .disabled(isOrderCompleted)
            .padding()
        }
    }
    
    private var backgroundColor: some View {
        isOrderCompleted ?
            Color.green.edgesIgnoringSafeArea(.all)
            : Color.yellow.edgesIgnoringSafeArea(.all)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

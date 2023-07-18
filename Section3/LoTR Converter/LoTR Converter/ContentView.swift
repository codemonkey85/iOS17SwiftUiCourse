//
//  ContentView.swift
//  LoTR Converter
//
//  Created by Michael Bond on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            // Background image
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Prancing Pony image
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                // Currency conversion section
                
                HStack {
                    // Left conversion section
                    
                    VStack {
                        // Currency
                        
                        HStack {
                            // Currency image
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, -5)
                        
                        // Text field
                        TextField("Amount", text: $leftAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                    }
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    // Right conversion section
                    
                    VStack {
                        // Currency
                        
                        HStack {
                            // Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            // Currency image
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        }
                        .padding(.bottom, -5)
                        
                        // Text field
                        TextField("Amount", text: $rightAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .cornerRadius(50)
                
                Spacer()
                
                // Info button
                HStack {
                    Spacer()
                    
                    Button {
                        // Display exchange info screen
                    } label: {
                        Image(systemName: "info.circle.fill")
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

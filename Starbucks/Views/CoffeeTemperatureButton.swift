//
//  CoffeeTemperatureButton.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-18.
//

import SwiftUI

struct CoffeeTemperatureButton: View {
    @Binding var coffeeType: CoffeeType
    @Binding var index: Int
    
    var body: some View {
            
            
            switch coffeeType {
            case .hot, .ice:
                ZStack {
                    RoundedRectangle(cornerRadius: 999)
                        .fill(.gray07)
                    HStack {
                        Spacer()
                        
                        Button {
                            print("index: \(index)")
                            if coffeeType == .hot {
                                coffeeType = .ice
                                index = 1
                            } else {
                                coffeeType = .hot
                                index = 0
                            }
                        } label: {
                            Text("HOT")
                                .foregroundStyle((coffeeType == .hot) ? .red01 : .gray02)
                                .font(.semiBold18)
                        }
                        
                        Spacer()
                        
                        Button {
                            print("index: \(index)")
                            if coffeeType == .hot {
                                coffeeType = .ice
                                index = 1
                            } else {
                                coffeeType = .hot
                                index = 0
                            }
                        } label: {
                            Text("ICED")
                                .foregroundStyle((coffeeType == .ice) ? .blue01 : .gray02)
                                .font(.semiBold18)
                        }
                        
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 36)
                
            case .hotOnly:
                Text("HOT ONLY")
                    .foregroundStyle(.red01)
                    .font(.bold16)
                    .frame(maxWidth: .infinity)
                    .frame(height: 36)
                    .background(
                        RoundedRectangle(cornerRadius: 999)
                            .fill(.clear)
                            .stroke(.gray00)
                            
                    )
            case .iceOnly:
                Text("ICE ONLY")
                    .foregroundStyle(.red01)
                    .font(.bold16)
                    .frame(maxWidth: .infinity)
                    .frame(height: 36)
                    .background(
                        RoundedRectangle(cornerRadius: 999)
                            .fill(.clear)
                            .stroke(.gray00)
                            
                    )
                    
            }
        
    }
}

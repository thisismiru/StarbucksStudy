//
//  CoffeeDetailView.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-18.
//

import SwiftUI

struct CoffeeDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var coffee: Coffee
    @State var coffeeType: CoffeeType = .hot
    
    @State var index: Int = 0
    
    
    var body: some View {
        ZStack {
            contentGroup
                .ignoresSafeArea()
            
            VStack {
                customToolBar
                
                Spacer()
            }
        }
        .onAppear {
            coffeeType = coffee.type
            switch coffee {
            case .macchiato(let coffeeType):
                if coffeeType == .hot {
                    self.index = 0
                } else {
                    self.index = 1
                }
            case .americano(let coffeeType):
                if coffeeType == .ice {
                    self.index = 0
                } else {
                    self.index = 1
                }
            case .conPanna, .espresso:
                self.index = 0
            }
        }
        .toolbar(.hidden)
    }
    
    private var contentGroup: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(coffee.detail[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            coffeeDetail
            
            Spacer()
            
            orderButton
        }
    }
    
    private var coffeeDetail: some View {
        VStack(spacing: 22) {
            coffeeName
            
            coffeeDescription
            
            coffeeTemperature
        }
        .padding(.horizontal, 10)
    }
    
    private var coffeeName: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Text(coffee.detail[index].name)
                    .font(.semiBold24)
                    .foregroundStyle(.black03)
                
                Image(.new)
                    .frame(width: 20, height: 10)
                
                Spacer()
            }
            
            Text(coffee.detail[index].englishName)
                .font(.semiBold14)
                .foregroundStyle(.gray01)
        }
    }
    
    private var coffeeDescription: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(coffee.detail[index].description)
                    .font(.semiBold14)
                    .foregroundStyle(.gray06)
                
                Spacer()
            }
            
            Text(coffee.detail[index].price)
                .font(.bold24)
                .foregroundStyle(.black03)
        }
    }
    
    private var coffeeTemperature: some View {
        CoffeeTemperatureButton(coffeeType: $coffeeType, index: $index)
    }
    
    private var orderButton: some View {
        MainButton(text: "주문하기", height: 43, action: {})
            .safeAreaPadding(.horizontal, 28)
            .safeAreaPadding(.bottom, 29)
            .padding(.top, 15)
            .background(.white)
            .shadow(color: .black.opacity(0.04), radius: 3.5, x: 0, y: -3)
    }
    
    private var customToolBar: some View {
        HStack {
            Button {
                dismiss()
            } label: {
                Image(.coffeeChevron)
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(.coffeeShare)
                    .resizable()
                    .frame(width: 32, height: 32)
            }
        }
    }
}

#Preview {
    CoffeeDetailView(coffee: .americano(.iceOnly))
}

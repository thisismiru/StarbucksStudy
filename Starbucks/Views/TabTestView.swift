//
//  TabView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/11.
//

import SwiftUI

struct TabTestView: View {
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Tab("", image: selection == 0 ? "greenHome" : "grayHome", value: 0) {
                HomeView()
            }
            Tab("", image: selection == 1 ? "greenPay" : "grayPay", value: 1) {
                PayView()
            }
            Tab("", image: selection == 2 ? "greenOrder" : "grayOrder", value: 2) {
                SignupView()
            }
            Tab("", image: selection == 3 ? "greenShop" : "grayShop", value: 3) {
                ShopView()
            }
            Tab("", image: selection == 4 ? "greenOther" : "grayOther", value: 4) {
                OtherView()
            }
        }
    }
}

#Preview {
    TabTestView()
}

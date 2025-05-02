//
//  TossBankAppView.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct TossBankAppView: View {
    
    @State private var tabSelection = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }.tag(0)
            
            BenefitView()
                .tabItem {
                    Image(systemName: "pentagon.fill")
                    Text("혜택")
                }.tag(1)
            
            ShoppingView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("토스쇼핑")
                }.tag(2)
            
            FinanceView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("증권")
                }.tag(3)
            
            EntireView()
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                    Text("전체")
                }.tag(4)
        }
        .tint(.black)
    }
}


#Preview {
    TossBankAppView()
}

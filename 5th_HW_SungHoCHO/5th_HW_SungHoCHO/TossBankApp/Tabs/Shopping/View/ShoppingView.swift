//
//  ShoppingView.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct ShoppingView: View {
    
    @State private var selectedPicker: shoppingTabInfo = .all
    @Namespace private var animation
    
    var body: some View {
        ScrollView() {
            LazyVStack {
                DescriptView()
                animate()
                ShoppingTabView(shoppingTabs: selectedPicker)
            }
            .padding(24)
        }
    }
    
    @ViewBuilder
    private func animate() -> some View {
        HStack {
            ForEach(shoppingTabInfo.allCases, id: \.self) { item in
                VStack {
                    Text(item.rawValue)
                        .frame(maxWidth: .infinity/6, minHeight: 20)
                        .font(.system(size: 14))
                        .foregroundColor(selectedPicker == item ? .black: .gray)
                    
                    if selectedPicker == item {
                        Capsule()
                            .foregroundColor(.black)
                            .frame(height: 3)
                            .font(.title3)
                            .matchedGeometryEffect(id: "info", in: animation)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedPicker = item
                    }
                }
            }
        }
        .padding(.bottom)
    }
}


#Preview {
    ShoppingView()
}

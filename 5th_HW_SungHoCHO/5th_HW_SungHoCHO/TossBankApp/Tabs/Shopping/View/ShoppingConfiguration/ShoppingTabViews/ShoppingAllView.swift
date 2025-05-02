//
//  ShoppingAllView.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//

import SwiftUI

struct ShoppingAllView: View {
    var body: some View {
        VStack(spacing: 24) {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("1천원대부터\n고르는 국민간식")
                        .font(.system(size: 20))
                    Text("삼립식품 초저가 구매하기")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                }
                Spacer()
                Image("Bread")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
            }
            .padding()
            .background(Color.purple.opacity(0.1))
            .cornerRadius(24)
            
            HStack {
                Image("Left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 12)
                Text("50초·스크롤해야 시간이 줄어요")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                Image("Right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 12)
            }
            
            HStack {
                Text("하루특가")
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                HStack(spacing: 12) {
                    Text("전체보기")
                    Image(systemName: "chevron.right")
                }
                .font(.system(size: 16))
                .foregroundColor(.gray)
            }
            
            ForEach(ShoppingDataModel.modeling[0]) { item in
                ShoppingDataCell(shoppingData: item)
            }
            
            HStack {
                Text("오늘의 상품")
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                Text("AD")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12))
                    .overlay(
                        Capsule()
                            .stroke(Color.gray)
                    )
            }
            
            ForEach(ShoppingDataModel.modeling[1].sorted { $0.sellPriceInt < $1.sellPriceInt }) { item in
                ShoppingDataCell(shoppingData: item)
            }
        }
    }
}


#Preview {
    ShoppingAllView()
}

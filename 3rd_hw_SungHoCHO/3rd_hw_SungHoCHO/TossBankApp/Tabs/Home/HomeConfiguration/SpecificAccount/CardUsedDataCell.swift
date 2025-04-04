//
//  SpecificAccountCell.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct CardUsedDataCell: View {
    
    var cardUsedData: CardUsedDataModel
    
    var body: some View {
        HStack {
            Image("cardUsedData.img")
                .resizable()
                .scaledToFit()
                .frame(width: 36, height: 36)
            
            VStack(alignment: .leading) {
                Text("cardUsedData.name")
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                Text("cardUsedData.time")
                    .font(.system(size: 12))
                    .foregroundColor(.gray.opacity(0.5))
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("cardUsedData.usedMoney")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                Text("cardUsedData.nowMoney")
                    .font(.system(size: 12))
                    .foregroundColor(.gray.opacity(0.5))
            }
        }
    }
}

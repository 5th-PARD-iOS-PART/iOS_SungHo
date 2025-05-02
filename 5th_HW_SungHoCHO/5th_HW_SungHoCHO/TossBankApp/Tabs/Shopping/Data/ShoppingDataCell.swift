//
//  ShoppingDataCell.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//

import SwiftUI

struct ShoppingDataCell: View {
    
    var shoppingData: ShoppingDataModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(shoppingData.img)
                .resizable()
                .scaledToFill()
                .cornerRadius(20)
//                .frame(width: 400, height: 100)
            
            Text(shoppingData.title)
                .font(.system(size: 16))
                .foregroundColor(.gray)
            
            HStack(spacing: 16) {
                Text(shoppingData.sellPrice)
                    .font(.system(size: 20))
                Text(shoppingData.originalPrice)
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                
                if let tossDiscount = shoppingData.discount {
                    HStack {
                        Image("Toss")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                        
                        Text(tossDiscount)
                            .font(.system(size: 12))
                            .foregroundColor(.blue)
                    }
                    .padding(8)
                    .background(Color.blue.opacity(0.2))
                    .clipShape(Capsule())
                }
            }
            
            Text(shoppingData.description)
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
    }
}


//#Preview {
//    ShoppingDataCell(shoppingData: ShoppingDataModel)
//}

//
//  ShoppingClotheView.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//

import SwiftUI

struct ShoppingClotheView: View {
    
    let clotheItems: [ShoppingDataModel] = {
        let allItems = ShoppingDataModel.modeling.flatMap { $0 }
        return allItems.filter { $0.sort == "의류" }
    }()
    
    var body: some View {
        ForEach(clotheItems.sorted { $0.sellPriceInt < $1.sellPriceInt } ) { item in
            ShoppingDataCell(shoppingData: item)
        }
    }
}

#Preview {
    ShoppingClotheView()
}

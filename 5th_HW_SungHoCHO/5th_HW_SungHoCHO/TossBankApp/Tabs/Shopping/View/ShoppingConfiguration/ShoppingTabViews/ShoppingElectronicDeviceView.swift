//
//  ShoppingElectronicDeviceView.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//

import SwiftUI

struct ShoppingElectronicDeviceView: View {
    
    let electronicItems: [ShoppingDataModel] = {
        let allItems = ShoppingDataModel.modeling.flatMap { $0 }
        return allItems.filter { $0.sort == "전자제품" }
    }()
    
    var body: some View {
        ForEach(electronicItems.sorted { $0.sellPriceInt < $1.sellPriceInt } ) { item in
            ShoppingDataCell(shoppingData: item)
        }
    }
}

#Preview {
    ShoppingElectronicDeviceView()
}

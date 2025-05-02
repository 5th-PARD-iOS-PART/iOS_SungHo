//
//  ShoppingTabView.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//

import SwiftUI

enum shoppingTabInfo : String, CaseIterable {
    case all = "모두"
    case specialPrice = "특가"
    case food = "식품"
    case clothe = "의류"
    case electronicDevice = "전자제품"
    case beauty = "뷰티"
}

struct ShoppingTabView: View {
    
    var shoppingTabs: shoppingTabInfo
    
    var body: some View {
        ScrollView {
            switch shoppingTabs {
            case .all:
                ShoppingAllView()
            case .specialPrice:
                SpecialPriceView()
            case .food:
                ShoppingFoodView()
            case .clothe:
                ShoppingClotheView()
            case .electronicDevice:
                ShoppingElectronicDeviceView()
            case .beauty:
                ShoppingBeautyView()
            }
        }
    }
}

//#Preview {
//    ShoppingTabView(shoppingTabs: shoppingTabInfo)
//}

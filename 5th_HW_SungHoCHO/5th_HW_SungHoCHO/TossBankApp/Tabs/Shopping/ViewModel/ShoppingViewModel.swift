//
//  ShoppingViewModel.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//

import SwiftUI

class ShoppingViewModel: ObservableObject {
    @Published var allItems: [ShoppingDataModel] = []               // 모두
    @Published var specialPriceItems: [ShoppingDataModel] = []      // 특가
    @Published var foodItems: [ShoppingDataModel] = []              // 식품
    @Published var clotheItems: [ShoppingDataModel] = []            // 의류
    @Published var electronicItems: [ShoppingDataModel] = []        // 전자제품
    @Published var beautyItems: [ShoppingDataModel] = []            // 뷰티
    @Published var selectedTab: shoppingTabInfo = .all
    
    // 하루특가 아이템 (모델링[0])
    @Published var dailySpecialItems: [ShoppingDataModel] = []
    
    // 오늘의 상품 아이템 (모델링[1])
    @Published var todayItems: [ShoppingDataModel] = []
    
    init() {
        loadData()
    }
    
    func loadData() {
        // 모든 아이템을 하나의 배열로 평탄화
        let allItemsData = ShoppingDataModel.modeling.flatMap { $0 }
        self.allItems = allItemsData
        
        // 특가 아이템 필터링
        let filteredSpecialItems = allItemsData.filter { $0.sort == "특가" }
        self.specialPriceItems = filteredSpecialItems.sorted { $0.sellPriceInt < $1.sellPriceInt }
        
        // 식품 아이템 필터링
        let filteredFoodItems = allItemsData.filter { $0.sort == "식품" }
        self.foodItems = filteredFoodItems.sorted { $0.sellPriceInt < $1.sellPriceInt }
        
        // 의류 아이템 필터링
        let filteredClotheItems = allItemsData.filter { $0.sort == "의류" }
        self.clotheItems = filteredClotheItems.sorted { $0.sellPriceInt < $1.sellPriceInt }
        
        // 전자제품 아이템 필터링
        let filteredElectronicItems = allItemsData.filter { $0.sort == "전자제품" }
        self.electronicItems = filteredElectronicItems.sorted { $0.sellPriceInt < $1.sellPriceInt }
        
        // 뷰티 아이템 필터링
        let filteredBeautyItems = allItemsData.filter { $0.sort == "뷰티" }
        self.beautyItems = filteredBeautyItems.sorted { $0.sellPriceInt < $1.sellPriceInt }
        
        // 하루특가 아이템 (모델링[0])
        self.dailySpecialItems = ShoppingDataModel.modeling[0]
        
        // 오늘의 상품 아이템 (모델링[1])
        self.todayItems = ShoppingDataModel.modeling[1].sorted { $0.sellPriceInt < $1.sellPriceInt }
    }
    
    func setSelectedTab(_ tab: shoppingTabInfo) {
        withAnimation(.easeInOut) {
            self.selectedTab = tab
        }
    }
    
    func getItemsForSelectedTab() -> [ShoppingDataModel] {
        switch selectedTab {
        case .all:                      // 모두
            return allItems
        case .specialPrice:             // 특가
            return specialPriceItems
        case .food:                     // 식품
            return foodItems
        case .clothe:                   // 의류
            return clotheItems
        case .electronicDevice:         // 전자제품
            return electronicItems
        case .beauty:                   // 뷰티
            return beautyItems
        }
    }
}

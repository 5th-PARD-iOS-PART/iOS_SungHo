//
//  MyTabView.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/25/25.
//

import SwiftUI

struct MyTabView: View {
    
    let user = UserInfoModel.mockData
    
    var body: some View {
        VStack(spacing: 28) {
            TopView(dataModel: user)
                
            StateCell(dataModel: user)
            
            FoodCell(dataModel: user)
            
            HelpCell()
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    MyTabView()
}

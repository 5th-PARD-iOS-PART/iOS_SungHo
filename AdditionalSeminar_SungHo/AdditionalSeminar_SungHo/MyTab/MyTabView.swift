//
//  MyTabView.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/25/25.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        VStack(spacing: 28) {
            TopView()
                
            StateCell()
            
            FoodCell()
            
            HelpCell()
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    MyTabView()
}

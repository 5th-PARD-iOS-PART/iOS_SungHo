//
//  TitleView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {
            Image("pard")
                .resizable()
                .scaledToFit()
            
            Text("5th")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea(.all)
        TitleView()
    }
}

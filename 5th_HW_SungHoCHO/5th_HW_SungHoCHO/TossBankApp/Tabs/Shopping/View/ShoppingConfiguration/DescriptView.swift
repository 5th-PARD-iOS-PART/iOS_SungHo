//
//  DescriptView.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//

import SwiftUI

struct DescriptView: View {
    var body: some View {
        HStack {
            Text("토스쇼핑")
                .font(.system(size: 24, weight: .bold))
            
            Spacer()
            
            HStack(spacing: 24) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.gray)
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.gray)
                Image(systemName: "cart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.gray)
            }
        }
    }
}


#Preview {
    DescriptView()
}

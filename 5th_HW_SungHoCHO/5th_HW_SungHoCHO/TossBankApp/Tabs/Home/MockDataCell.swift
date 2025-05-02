//
//  MockDataCell.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct MockDataCell: View {
    
    var mockData: MockData
    
    var body: some View {
        HStack(spacing: 24) {
            Image(mockData.img)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
            Text(mockData.name)
                .font(.system(size: 16))
                .foregroundColor(.gray)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 12, height: 12)
                .foregroundColor(.gray)
        }
    }
}

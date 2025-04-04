//
//  AccountDataCell.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct AccountDataCell: View {
    
    var accountData: AccountData
    
    var body: some View {
        HStack(spacing: 24) {
            Image("accountData.img")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
            
            VStack(alignment: .leading) {
                Text("accountData.money")
                    .font(.system(size: 16))
                Text("accountData.bank")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text("accountData.description")
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                .foregroundColor(.blue)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }
}

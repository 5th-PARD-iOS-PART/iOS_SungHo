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
            if accountData.img == "kBank" {
                Image(accountData.img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                    .padding(.vertical, 2)
                    .offset(x: -6)
                
                VStack(alignment: .leading) {
                    Text(accountData.money)
                        .font(.system(size: 16))
                    Text(accountData.bank)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }.offset(x: -10)
            } else {
                Image(accountData.img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36, height: 36)
                    .padding(.vertical, 2)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(accountData.money)
                            .font(.system(size: 16))
                        
                        if let accountChanging = accountData.changing {
                            if accountChanging.first == "+" {
                                Text(accountChanging)
                                    .font(.system(size: 20))
                                    .foregroundColor(.red)
                            } else if accountChanging.first == "-" {
                                Text(accountChanging)
                                    .font(.system(size: 20))
                                    .foregroundColor(.blue)
                            } else {
                                Text(accountChanging)
                                    .font(.system(size: 20))
                            }
                        }
                    }
                    
                    Text(accountData.bank)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            if let accountDescription = accountData.description {
                Text(accountDescription)
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    .foregroundColor(.blue)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
        }
    }
}

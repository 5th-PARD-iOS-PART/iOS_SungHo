//
//  AccountDataCell.swift
//  4th_HW_SungHoCHO
//
//  Created by  Lucid on 4/9/25.
//

import SwiftUI

struct SendAccountDataCell: View {
    
    var sendAccountData: SendAccountData
    
    var body: some View {
        HStack(spacing: 16) {
            Image(sendAccountData.img)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading) {
                Text(sendAccountData.name)
                    .font(.system(size: 16))
                Text(sendAccountData.account)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
//            Button(action: {
//                sendAccountData.isOnToggle.toggle()
//            }) {
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(sendAccountData.isOnToggle ? .blue : .gray)
//            }
        }
    }
}

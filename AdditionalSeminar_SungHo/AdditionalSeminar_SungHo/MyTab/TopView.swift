//
//  TopView.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/26/25.
//

import SwiftUI

struct TopView: View {
    
    var dataModel: UserInfoModel
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 236)
                .clipShape(RoundedCorner(radius: 50, corners: [.bottomLeft, .bottomRight]))
                .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 2)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("My")
                    .font(.system(size: 24, weight: .bold))
                
                HStack(spacing: 60) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(dataModel.username)
                            .font(.system(size: 24, weight: .bold))
                        
                        HStack(spacing: 4) {
                            Text(dataModel.tastePreferences[0])
                            Text(dataModel.tastePreferences[1])
                            Text(dataModel.tastePreferences[2])
                        }
                        .font(.system(size: 12))
                        .foregroundColor(.orange)
                        .underline()
                        
                        Button(action: {}) {
                            Text("고유입맛 수정하기 >")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                                .underline()
                        }
                            
                    }
                    
                    Image("dog")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}

#Preview {
    let user = UserInfoModel.mockData
    TopView(dataModel: user)
}

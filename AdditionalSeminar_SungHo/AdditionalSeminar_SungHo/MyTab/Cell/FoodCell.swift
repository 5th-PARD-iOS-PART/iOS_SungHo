//
//  FoodCell.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/26/25.
//

import SwiftUI

struct FoodCell: View {
    
    var dataModel: UserInfoModel
    
    var body: some View {
        VStack(spacing: 32) {
            HStack {
                Text("어제 먹은 음식")
                    .font(.system(size: 16))
                
                Spacer()
                
                Text(dataModel.yesterdayEaten)
                    .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
                    .font(.system(size: 12))
                    .foregroundColor(.orange)
                    .overlay(
                        Capsule().stroke(Color.orange, lineWidth: 1)
                    )
            }
            .padding(EdgeInsets(top: 24, leading: 28, bottom: 0, trailing: 28))
            
            Divider()
                .padding(EdgeInsets(top: 0, leading: 28, bottom: 0, trailing: 28))
            
            VStack(alignment: .leading, spacing: 24) {
                Text("오늘의 입맛 키워드")
                    .font(.system(size: 16))
                
                VStack(spacing: 8) {
                    HStack(spacing: 12) {
                        Spacer()
                        
//                        HStack(spacing: 4) {
//                            Image("meat")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 16, height: 16)
//                            Text("육류")
//                                .font(.system(size: 12))
//                        }
                        Text(dataModel.todayTaste[0])
                            .font(.system(size: 12))
                            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                            .overlay(
                                Capsule().stroke(Color.orange, lineWidth: 1)
                            )
                        
//                        HStack(spacing: 4) {
//                            Image("breadd")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 16, height: 16)
//                            Text("빵")
//                                .font(.system(size: 12))
//                        }
                        Text(dataModel.todayTaste[1])
                            .font(.system(size: 12))
                            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                            .overlay(
                                Capsule().stroke(Color.orange, lineWidth: 1)
                            )
                        
//                        HStack(spacing: 4) {
//                            Image("korea")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 16, height: 16)
//                            Text("한식")
//                                .font(.system(size: 12))
//                        }
                        Text(dataModel.todayTaste[2])
                            .font(.system(size: 12))
                            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                            .overlay(
                                Capsule().stroke(Color.orange, lineWidth: 1)
                            )
                    }
                    
                    HStack(spacing: 12) {
                        Spacer()
                        
//                        HStack(spacing: 4) {
//                            Image("plate")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 16, height: 16)
//                            Text("NO 국물")
//                                .font(.system(size: 12))
//                        }
                        Text(dataModel.todayTaste[3])
                            .font(.system(size: 12))
                            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                            .overlay(
                                Capsule().stroke(Color.orange, lineWidth: 1)
                            )
                        
//                        HStack(spacing: 4) {
//                            Image("soup")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 16, height: 16)
//                            Text("헤비")
//                                .font(.system(size: 12))
//                        }
                        Text(dataModel.todayTaste[4])
                            .font(.system(size: 12))
                            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
                            .overlay(
                                Capsule().stroke(Color.orange, lineWidth: 1)
                            )
                    }
                }
            }
            .padding(EdgeInsets(top: 0, leading: 28, bottom: 28, trailing: 28))
            .frame(width: 328)
        }
        .frame(width: 328)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.1), radius: 8)
        )
    }
}

#Preview {
    let user = UserInfoModel.mockData
    FoodCell(dataModel: user)
}

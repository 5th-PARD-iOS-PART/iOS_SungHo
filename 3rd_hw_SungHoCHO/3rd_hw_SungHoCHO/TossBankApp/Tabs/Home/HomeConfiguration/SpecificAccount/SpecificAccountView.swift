//
//  SpecificAccountView.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct SpecificAccountView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("통장")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                    Divider()
                        .background(Color.black)
                }
                VStack {
                    Text("내 토스뱅크")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                    Divider()
                }
                VStack {
                    Text("상품찾기")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                    Divider()
                }
            }
            
            VStack(alignment: .leading) {
                Text("토스뱅크 1000-9047-0710")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                
                HStack {
                    Text("38,841원")
                        .font(.system(size: 28, weight: .bold))
                    Spacer()
                    HStack {
                        Image(systemName: "lanyardcard.fill")
                            .foregroundColor(.black)
                        Text("카드")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                    }
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    .foregroundColor(.blue)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                }
                HStack(spacing: 20) {
                    Button(action: {}) {
                        Text("채우기")
                            .frame(maxWidth: .infinity, minHeight: 32)
                    }
                    .buttonStyle(.bordered)
                    
                    Button(action: {}) {
                        Text("보내기")
                            .frame(maxWidth: .infinity, minHeight: 32)
                    }
                    .buttonStyle(.borderedProminent)
                }
                .tint(Color.blue)
                
                HStack(spacing: 24) {
                    Image("aaa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                    
                    VStack(alignment: .leading) {
                        Text("이제까지 쌓인 이자")
                            .font(.system(size: 12))
                            .foregroundColor(.gray.opacity(0.5))
                        Text("114원 지금받기")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.top)
            }
            
            List {
                Section() {
                    ForEach(CardUsedDataModel.modeling) { item in
                        CardUsedDataCell(cardUsedData: item)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

//
//  SpecificAccountView.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct SpecificAccountView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationView {
            List {
                Section() {
                    VStack(alignment: .leading) {
                        HStack {
                            Button(action: {}) {
                                VStack {
                                    Text("통장")
                                        .font(.system(size: 16))
                                        .foregroundColor(.black)
                                    Divider()
                                        .background(Color.black)
                                }
                            }
                            
                            Button(action: {}) {
                                VStack {
                                    Text("내 토스뱅크")
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                    Divider()
                                }
                            }
                            
                            Button(action: {}) {
                                VStack {
                                    Text("상품찾기")
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                    Divider()
                                }
                            }
                        }
                        .padding(EdgeInsets(top: 16, leading: 0, bottom: 32, trailing: 0))
                        
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
                            Button(action: {
                                print("계좌 채우기")
                            }) {
                                Text("채우기")
                                    .frame(maxWidth: .infinity, minHeight: 32)
                            }
                            .buttonStyle(.bordered)
                            
                            Button(action: {
                                path.append("SelectAccountView")
                                print("돈 보내기")
                            }) {
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
                }
                
                Section() {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("전체")
                                .foregroundColor(.gray)
                            Image(systemName: "chevron.down")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        .padding(.vertical)
                        
                        Text("3월 22일")
                            .font(.system(size: 12))
                            .foregroundColor(.gray.opacity(0.8))
                        ForEach(CardUsedDataModel.modeling[0]) { item in
                            CardUsedDataCell(cardUsedData: item)
                        }
                        
                        Text("3월 21일")
                            .font(.system(size: 12))
                            .foregroundColor(.gray.opacity(0.8))
                        ForEach(CardUsedDataModel.modeling[1]) { item in
                            CardUsedDataCell(cardUsedData: item)
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .listSectionSpacing(12)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("통장관리")
                        .foregroundColor(.black)
                }
            }
        }
    }
}


#Preview {
    SpecificAccountView(path: .constant(NavigationPath()))
}

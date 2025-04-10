//
//  HomeView.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section(header: HStack(spacing: 24) {
                    Button(action: {}) {
                        HStack(spacing: 12) {
                            Image("todo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            
                            Text("할 일")
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image("payment")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                    }
                }) {}.listRowInsets(EdgeInsets())
                
                Section() {
                    HStack(spacing: 24) {
                        Image("tooth")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        
                        VStack(alignment: .leading) {
                            Text("치아는 뼈일까?")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                            Text("정답보기")
                                .font(.system(size: 20))
                                .foregroundColor(.blue)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                
                Section() {
                    HStack {
                        Text("토스뱅크")
                        
                        Spacer()
                        
                        Text("내 소비복권 긁기")
                            .font(.system(size: 12))
                            .foregroundColor(.blue)
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                
                Section() {
//                    ForEach(AccountData.modeling) { item in
//                        AccountDataCell(accountData: item)
//                        // NavigationLink '>' 없애기
//                            .background(NavigationLink(destination: SpecificAccountView()) {
//                                EmptyView()
//                            }
//                                .navigationBarBackButtonHidden(false)
//                                .tint(.black)
//                                .opacity(0))
//                    }.listRowSeparator(.hidden)
                    
                    ForEach(AccountData.modeling) { cell in
                        Button {
                            path.append("SpecificAccountView")
                        } label: {
                            AccountDataCell(accountData: cell)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .listRowSeparator(.hidden)
                    }
                    
                    HStack {
                        Text("대출 0")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, minHeight: 32)
                        Divider()
                        Text("증권 7")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, minHeight: 32)
                        Divider()
                        Text("저축 3")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, minHeight: 32)
                        Divider()
                        Text("전체 26")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, minHeight: 32)
                    }
                }
                
                Section() {
                    HStack(spacing: 24) {
                        Text("W")
                            .font(.system(size: 20))
                            .foregroundColor(.blue)
                            .frame(width: 32, height: 32)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading) {
                            Text("823,643원")
                                .font(.system(size: 20))
                            Text("3월에 쓴돈")
                                .font(.system(size: 16))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Text("내역")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .foregroundColor(.blue)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                    }
                }
                
                Section() {
                    HStack(spacing: 24) {
                        Image("credit")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        Text("내 신용점수")
                            .font(.system(size: 16))
                        
                        Spacer()
                        
                        Text("확인하기")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                            .foregroundColor(.blue)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.vertical, 4)
                    }
                    
                    HStack {
                        Text("계좌개설")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, minHeight: 32)
                        Divider()
                        Text("카드발급")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, minHeight: 32)
                        Divider()
                        Text("대출받기")
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, minHeight: 32)
                    }
                }
                
                Section() {
                    HStack(spacing: 24) {
                        Image("card")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48, height: 48)
                            .padding(.vertical, 4)
                        
                        VStack(alignment: .leading) {
                            Text("[7만원]이 지급되었습니다")
                                .font(.system(size: 16))
                            Text("빗썸신규회원 100% 지급")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                
                Section(header: Text("조성호님을 위해 준비했어요").font(.system(size: 16)).offset(x: -12)) {
                    HStack(spacing: 12) {
                        HStack {
                            Text("혜택받는\n체크카드")
                            Spacer()
                            Image("card1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                        }
                        .frame(maxWidth: .infinity, minHeight: 32)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                        HStack {
                            Text("내 카드보다\n혜택받기")
                            Spacer()
                            Image("card2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                        }
                        .frame(maxWidth: .infinity, minHeight: 32)
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.clear)
                }
                
                Section() {
                    ForEach(MockData.modeling) { item in
                        MockDataCell(mockData: item)
                    }
                }.listRowSeparator(.hidden)
                
                Section(footer:
                            HStack(spacing: 80) {
                    Button(action: {}) {
                        Text("내 자산 숨기기")
                            .frame(maxWidth: .infinity, minHeight: 32)
                    }
                    
                    Button(action: {}) {
                        Text("금액 가리기")
                            .frame(maxWidth: .infinity, minHeight: 32)
                    }
                }
                    .foregroundColor(.gray)
                ) {}
            }
            .listSectionSpacing(12)
            .navigationDestination(for: String.self) { value in
                switch value {
                case "SpecificAccountView": SpecificAccountView(path: $path)
                case "SelectAccountView": SelectAccountView(path: $path)
                default: Text("잘못된 페이지")
                }
            }
        }
    }
}


#Preview {
    HomeView()
}

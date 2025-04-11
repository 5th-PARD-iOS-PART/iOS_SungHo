//
//  SendMoneyView.swift
//  4th_HW_SungHoCHO
//
//  Created by  Lucid on 4/10/25.
//

import SwiftUI

struct SendMoneyView: View {
    
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 0) {
            VStack {
                VStack(alignment: .leading) {
                    HStack(spacing: 0) {
                        Text("내 토스뱅크통장")
                        Text("에서")
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .font(.system(size: 24))
                    .padding(.vertical, 4)
                    
                    Text("잔액 26,656원")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                }
                .padding(EdgeInsets(top: 24, leading: 24, bottom: 16, trailing: 24))
                
                VStack(alignment: .leading) {
                    HStack(spacing: 0) {
                        Text("내 WINGO통장")
                        Text("으로")
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .font(.system(size: 24))
                    .padding(.vertical, 4)
                    
                    Text("하나은행 15789165262107")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                }
                .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                
                HStack {
                    VStack(alignment: .leading) {
                        TextField("얼마나 옮길까요?", text: .constant(""))
                            .font(.system(size: 32))
                            .padding(.vertical, 4)
                        Text("잔액 26,656원")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                    }
                    .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                    
                    Spacer()
                }
            }
            
            Spacer()
            
            Button(action: {
                path.append("FinalCheckingView")
            }, label: {
                Text("다음")
                    .font(.system(size: 20))
                    .tint(.white)
                    .padding(20)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
            })
            
            Grid(horizontalSpacing: 0, verticalSpacing: 0) {
                GridRow() {
                    NumberButton(number: "1")
                    NumberButton(number: "2")
                    NumberButton(number: "3")
                }
                
                GridRow() {
                    NumberButton(number: "4")
                    NumberButton(number: "5")
                    NumberButton(number: "6")
                }
                
                GridRow() {
                    NumberButton(number: "7")
                    NumberButton(number: "8")
                    NumberButton(number: "9")
                }
                
                GridRow() {
                    NumberButton(number: "00")
                    NumberButton(number: "0")
                    ImageButton(systemName: "delete.left")
                }
            }
        }
    }
}

struct NumberButton: View {
    
    let number: String
    
    var body: some View {
        Button(action: {
            print("Tapped: \(number)")
        }) {
            Text(number)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, minHeight: 80)
        }
    }
}

struct ImageButton: View {
    
    let systemName: String
    
    var body: some View {
        Button(action: {
            print("Image button tapped!")
        }) {
            Image(systemName: systemName)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, minHeight: 80)
        }
    }
}


#Preview {
    SendMoneyView(path: .constant(NavigationPath()))
}

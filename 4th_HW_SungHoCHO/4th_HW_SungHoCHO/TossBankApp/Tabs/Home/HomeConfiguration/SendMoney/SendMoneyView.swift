//
//  SendMoneyView.swift
//  4th_HW_SungHoCHO
//
//  Created by  Lucid on 4/10/25.
//

import SwiftUI

struct SendMoneyView: View {
    
    @State private var inputText: String = ""
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
                        TextField("얼마나 옮길까요?", text: $inputText)
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
                    NumberButton(inputText: $inputText, number: "1")
                    NumberButton(inputText: $inputText, number: "2")
                    NumberButton(inputText: $inputText, number: "3")
                }
                
                GridRow() {
                    NumberButton(inputText: $inputText, number: "4")
                    NumberButton(inputText: $inputText, number: "5")
                    NumberButton(inputText: $inputText, number: "6")
                }
                
                GridRow() {
                    NumberButton(inputText: $inputText, number: "7")
                    NumberButton(inputText: $inputText, number: "8")
                    NumberButton(inputText: $inputText, number: "9")
                }
                
                GridRow() {
                    NumberButton(inputText: $inputText, number: "00")
                    NumberButton(inputText: $inputText, number: "0")
                    ImageButton(inputText: $inputText, systemName: "delete.left")
                }
            }
        }
    }
}

struct NumberButton: View {
    
    @Binding var inputText: String
    
    let number: String
    
    var body: some View {
        Button(action: {
            print("Tapped: \(number)")
            guard !(inputText.isEmpty && (number == "0" || number == "00")) else { return }
            inputText.append(number)
        }) {
            Text(number)
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, minHeight: 80)
        }
    }
}

struct ImageButton: View {
    
    @Binding var inputText: String
    let systemName: String
    
    var body: some View {
        Button(action: {
            guard !inputText.isEmpty else {
                print("Nothing to delete!")
                return
            }
            inputText.removeLast()
            print("DeleteButton tapped!")
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

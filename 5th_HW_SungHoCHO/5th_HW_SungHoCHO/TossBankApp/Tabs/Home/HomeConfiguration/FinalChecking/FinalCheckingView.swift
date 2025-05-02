//
//  FinalCheckingView.swift
//  4th_HW_SungHoCHO
//
//  Created by  Lucid on 4/11/25.
//

import SwiftUI

struct FinalCheckingView: View {
    
    @ObservedObject var viewModel = SharedData()
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                HStack(spacing: 0) {
                    Text(viewModel.receiveAccount)
                        .foregroundColor(.blue)
                    Text("으로")
                }
                .font(.system(size: 28, weight: .bold))
                
                Text("1원을")
                    .font(.system(size: 28, weight: .bold))
                Text("옮길까요?")
                    .font(.system(size: 28, weight: .bold))
            }
            
            Spacer()
            
            VStack {
                HStack {
                    Text("받는 분에게 표시")
                    Spacer()
                    Text("조성호")
                    Image(systemName: "chevron.right")
                }
                .padding(.vertical, 4)
                
                HStack {
                    Text("출금 계좌")
                    Spacer()
                    Text(viewModel.sendAccount)
                    Image(systemName: "chevron.right")
                }
                .padding(.vertical, 4)
                
                HStack {
                    Text("입금 계좌")
                    Spacer()
                    Text(viewModel.AccountNumber)
                }
                .padding(.vertical, 4)
            }
            .font(.system(size: 16))
            .foregroundColor(.gray)
            .padding(20)
            
            Button(action: {
                path.removeLast(path.count)
            }) {
                Text("옮기기")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            .padding()
            
            Text("평생 수수료 무료")
                .foregroundColor(.gray)
                .padding(.vertical, 4)
                .padding(.bottom, 4)
        }
        .navigationTitle("토스뱅크 송금")
    }
}


#Preview {
    FinalCheckingView(path: .constant(NavigationPath()))
}

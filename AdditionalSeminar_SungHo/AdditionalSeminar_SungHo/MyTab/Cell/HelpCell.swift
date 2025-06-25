//
//  HelpCell.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/26/25.
//

import SwiftUI

struct HelpCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("도움말")
                .font(.system(size: 16))
            
            VStack(alignment: .leading, spacing: 20) {
                HStack(spacing: 20) {
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    Text("서비스 이용 약관")
                }
                
                HStack(spacing: 20) {
                    Image("2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    Text("고객센터")
                }
                
                HStack(spacing: 20) {
                    Image("3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    Text("로그아웃")
                    Spacer()
                }
            }
            .font(.system(size: 14))
        }
        .padding(EdgeInsets(top: 36, leading: 28, bottom: 36, trailing: 0))
        .frame(width: 328)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.1), radius: 8)
        )
    }
}

#Preview {
    HelpCell()
}

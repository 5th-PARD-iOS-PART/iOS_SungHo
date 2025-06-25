//
//  StateCell.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/26/25.
//

import SwiftUI

struct StateCell: View {
    var body: some View {
        HStack {
            Text("요즘 나의 상태는")
                .font(.system(size: 16))
            
            Spacer()
            
            Text("다이어트")
                .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
                .font(.system(size: 12))
                .foregroundColor(.orange)
                .overlay(
                    Capsule().stroke(Color.orange, lineWidth: 1)
                )
        }
        .padding(EdgeInsets(top: 24, leading: 28, bottom: 24, trailing: 28))
        .frame(width: 328)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.1), radius: 8)
        )
    }
}

#Preview {
    StateCell()
}

//
//  ImageView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("Lucid")                                          // 사진 넣기 (이미지 명 : "Lucid")
            .resizable()                                        // 이미지의 크기를 자유롭게 조절
            .scaledToFit()                                      // 프레임 내에서 이미지의 비율을 유지한채로 맞추기
            .frame(width: 300, height: 300)                     // 이미지의 프레임 지정 (너비: 300, 높이: 300)
            .clipShape(Circle())                                // 이미지를 원형으로 자르기
            .overlay(                                           // 겹치기
                Circle().stroke(Color.blue, lineWidth: 10)      // 원의 테두리 겹치기 (파란색, 두께 10)
            )
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea(.all)
        ImageView()
    }
}

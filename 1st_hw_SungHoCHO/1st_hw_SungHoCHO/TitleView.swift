//
//  TitleView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {       // HStack 내의 요소 (간격: 아래로, 요소의 가로 간격: 20)
            Image("pard")                               // 이미지 ("이미지 이름: pard")
                .resizable()                            // 이미지 크기 조절
                .scaledToFit()                          // 이미지의 비율을 유지한 채로 프레임에 맞게 조절
            
            Text("5th")                                 // 텍스트 ("5th")
                .font(.largeTitle)                      // 텍스트 크기 (.largeTitle)
                .fontWeight(.bold)                      // 텍스트 굵기 (.bold)
                .foregroundColor(.white)                // 텍스트 색상 (.white)
        }
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea(.all)
        TitleView()
    }
}

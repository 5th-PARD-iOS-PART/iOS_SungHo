//
//  IntroView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack(spacing: 5) {                    // VStack 내의 요소 (세로 간격 5)
            Text("조 성 호")                      // 텍스트 ("조 성 호")
                .font(.title)                   // 텍스트 (크기: .title)
                .fontWeight(.bold)              // 텍스트 (굵기: .bold)
                .foregroundColor(.white)        // 텍스트 (색상: .white)
            
            Text("#iOS Developer | #ISTJ")
                .font(.title2)
                .foregroundColor(.gray)
        }
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea(.all)
        IntroView()
    }
}

//
//  ContentView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(edges: .all)        // 화면 전체 검정색 -> 모서리도 포함
            
            VStack() {
                TitleView()                                 // TitleView 넣기
                    .padding(.horizontal, 30)               // TitleView 앞뒤(.horizontal)로 간격 주기
                
                Spacer()                                    // Spacer() : 남은 간격을 끝까지 밀어넣기
                Spacer()                                    // 남은간격에 한번 더 밀어넣기
                
                VStack(spacing: 50) {                       // VStack 내의 요소 간격 50씩 주기
                    ImageView()                             // ImageView 넣기
                    IntroView()                             // IntroView 넣기
                    ButtonView()                            // ButtonView 넣기
                }
                Spacer()
            }
            .padding(.vertical, 50)                         // VStack 위아래(.vertical)로 간격
        }
    }
}


#Preview {
    ContentView()
}

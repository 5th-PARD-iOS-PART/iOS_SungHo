//
//  IntroView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("조 성 호")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
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

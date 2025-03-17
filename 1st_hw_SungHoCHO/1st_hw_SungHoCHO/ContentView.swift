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
            Color.black.ignoresSafeArea(edges: .all)
            
            VStack() {
                TitleView()
                    .padding(.horizontal, 30)
                
                Spacer()
                Spacer()
                
                VStack(spacing: 50) {
                    ImageView()
                    IntroView()
                    ButtonView()
                }
                Spacer()
            }
            .padding(.vertical, 50)
        }
    }
}

#Preview {
    ContentView()
}

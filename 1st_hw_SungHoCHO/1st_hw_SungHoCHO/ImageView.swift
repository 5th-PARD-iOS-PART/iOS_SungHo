//
//  ImageView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("Lucid")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
            )
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea(.all)
        ImageView()
    }
}

//
//  ButtonView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct ButtonView: View {
    @State private var isShowAlert: Bool = false
    
    var body: some View {
        Button("Contact me.") {
            print("Button clicked!")
            isShowAlert = true
            print(isShowAlert)
        }
        .font(.title3)
        .fontWeight(.bold)
        .buttonStyle(.borderedProminent)
        .alert("Contact", isPresented: $isShowAlert) {
            Button("확인", role: .cancel) {}
        } message: {
            Text("Phone. 010-4510-4927\nE-mail. bluecho97@gmail.com")
        }
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea(.all)
        ButtonView()
    }
}

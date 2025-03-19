//
//  ButtonView.swift
//  1st_hw_SungHoCHO
//
//  Created by  Lucid on 3/17/25.
//

import SwiftUI

struct ButtonView: View {
    @State private var isShowAlert: Bool = false                            // @State: 변하는 값에 따라 View를 새로 그림 (true이때 Alert, false일때 끄기)
                                                                            // Bool 타입의 isShowAlert 변수 생성
    var body: some View {
        Button("Contact me.") {                                             // Button ("버튼 텍스트") {버튼 눌렸을 때 동작}
            print("Button clicked!")                                        // Xcode에 print하기 (개발자가 인지하기 위함)
            isShowAlert = true                                              // Bool 타입 변수 = true
        }
        .font(.title3)
        .fontWeight(.bold)
        .buttonStyle(.borderedProminent)                                    // 버튼의 스타일
        .alert("Contact", isPresented: $isShowAlert) {                      // 경고창 ("경고창 제목 텍스트", isShowAlert 변수가 true 일때), $는 변하는 값임을 알림
            Button("확인", role: .cancel) {}                                 // 경고창 ("경고창 버튼 텍스트", 역할: 취소) {버튼 클릭시 아무 동작 없음}
        } message: {
            Text("Phone. 010-4510-4927\nE-mail. bluecho97@gmail.com")       // 메시지 텍스트 (전화번호, 이메일) -> 한줄로 작성해야 해서 \n을 활용해서 줄바꿈
        }
    }
}


#Preview {
    ZStack {
        Color.black.ignoresSafeArea(.all)
        ButtonView()
    }
}

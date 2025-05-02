//
//  MockDataModel.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

// 데이터 모델
struct MockData: Identifiable {
    let id = UUID()
    var img: String
    var name: String
}

// 더미 데이터
extension MockData {
    static let modeling: [MockData] =
        [
            MockData(img: "1", name: "내 현금 영수증"),
            MockData(img: "2", name: "토스 신용카드"),
            MockData(img: "3", name: "더 낸 연말정산 돌려받기")
        ]
}

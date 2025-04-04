//
//  AccountDataModel.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

// 데이터 모델
struct AccountData: Identifiable {
    let id = UUID()
    var img: String
    var money: String
    var changing: String?
    var bank: String
    var description: String?
}

// 더미 데이터
extension AccountData {
    static let modeling: [AccountData] =
        [
            AccountData(img: "1", money: "339,690원", bank: "WINGO통장", description: "송금"),
            AccountData(img: "1", money: "38,841원", bank: "토스뱅크통장", description: "송금"),
            AccountData(img: "1", money: "114원", bank: "토스뱅크에 쌓은 이자", description: "지금받기"),
            AccountData(img: "1", money: "650원", bank: "My 입출금통장", description: "송금"),
            AccountData(img: "1", money: "2,090원", bank: "KB나라사랑우대통장", description: "송금"),
            AccountData(img: "1", money: "29원", bank: "보통예금(IBK나라사랑통장)", description: "송금"),
            AccountData(img: "1", money: "118원", changing: "+4.42%", bank: "토스뱅크외화통장"),
            AccountData(img: "1", money: "0원", bank: "입출금통장", description: "송금"),
            AccountData(img: "1", money: "1,051원", bank: "보통예금(IBK주거래생활금융통장)", description: "송금"),
            AccountData(img: "1", money: "15,257,990원", changing: "-2.6%", bank: "투자 모아보기 15개")
        ]
}

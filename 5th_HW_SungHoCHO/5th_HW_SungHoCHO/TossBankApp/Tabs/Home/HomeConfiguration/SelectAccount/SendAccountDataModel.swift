//
//  AccountDataModel.swift
//  4th_HW_SungHoCHO
//
//  Created by  Lucid on 4/9/25.
//

import SwiftUI

// 데이터 모델
struct SendAccountData: Identifiable {
    let id = UUID()
    var img: String
    var name: String
    var account: String
    var isOnToggle: Bool
}

// 더미 데이터
extension SendAccountData {
    static let modeling: [[SendAccountData]] =
        [
            [
                SendAccountData(img: "hanaAccount", name: "WINGO통장", account: "하나은행157-891652-62107", isOnToggle: true),
                SendAccountData(img: "samsungAccount", name: "종합매매", account: "삼성증권7112898902-01", isOnToggle: true)
            ],
            [
                SendAccountData(img: "kbAccount", name: "김정희", account: "KB국민96314175848", isOnToggle: false),
                SendAccountData(img: "kakaoAccount", name: "내입출금통장", account: "카카오뱅크3333-20-8455642", isOnToggle: false),
                SendAccountData(img: "ibkAccount", name: "김래언", account: "IBK기업286-104115-01-019", isOnToggle: false),
                SendAccountData(img: "kbAccount", name: "김정희", account: "KB국민96314175848", isOnToggle: false),
                SendAccountData(img: "kakaoAccount", name: "내입출금통장", account: "카카오뱅크3333-20-8455642", isOnToggle: false),
                SendAccountData(img: "ibkAccount", name: "김래언", account: "IBK기업286-104115-01-019", isOnToggle: false)
            ]
        ]
}


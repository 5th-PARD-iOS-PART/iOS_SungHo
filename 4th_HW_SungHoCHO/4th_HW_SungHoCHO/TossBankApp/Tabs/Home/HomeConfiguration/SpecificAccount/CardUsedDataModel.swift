//
//  CardUsedDataModel.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

// 데이터 모델
struct CardUsedDataModel: Identifiable, Hashable {
    let id = UUID()
    var img: String
    var name: String
    var time: String
    var usedMoney: String
    var nowMoney: String
}

// 더미 데이터
extension CardUsedDataModel {
    static let modeling: [[CardUsedDataModel]] =
        [
            [
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시 선승인", time: "11:00", usedMoney: "+6,900원", nowMoney: "45,041원"),
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시 선승인", time: "11:00", usedMoney: "-6,900원", nowMoney: "38,141원")
            ],
            [
                CardUsedDataModel(img: "pcRoom", name: "플렉스PC방", time: "22:44", usedMoney: "-5,500원", nowMoney: "45,041원"),
                CardUsedDataModel(img: "pcRoom", name: "플렉스PC방", time: "21:35", usedMoney: "-5,000원", nowMoney: "50,541원"),
                CardUsedDataModel(img: "cu", name: "씨유한동대오석관점", time: "16:17", usedMoney: "-2,000원", nowMoney: "55,541원"),
                CardUsedDataModel(img: "cu", name: "씨유한동대오석관점", time: "15:59", usedMoney: "-4,400원", nowMoney: "57,541원"),
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시_0", time: "10:00", usedMoney: "-7,000원", nowMoney: "61,941원"),
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시 선승인", time: "09:47", usedMoney: "+7,300원", nowMoney: "68,941원"),
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시 선승인", time: "09:47", usedMoney: "-7,300원", nowMoney: "61,641원"),
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시 선승인", time: "09:46", usedMoney: "+7,300원", nowMoney: "68,941원"),
                CardUsedDataModel(img: "kakaoTaxi", name: "카카오 택시 선승인", time: "09:46", usedMoney: "-7,300원", nowMoney: "61,641원")
            ]
        ]
}

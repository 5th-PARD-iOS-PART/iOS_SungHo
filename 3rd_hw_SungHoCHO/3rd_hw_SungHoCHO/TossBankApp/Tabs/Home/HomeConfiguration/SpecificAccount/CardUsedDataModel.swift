//
//  CardUsedDataModel.swift
//  3rd_hw_SungHoCHO
//
//  Created by  Lucid on 4/4/25.
//

import SwiftUI

// 데이터 모델
struct CardUsedDataModel: Identifiable {
    let id = UUID()
    var img: String
    var name: String
    var time: String
    var usedMoney: String
    var nowMoney: String
}

// 더미 데이터
extension CardUsedDataModel {
    static let modeling: [CardUsedDataModel] =
        [
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원"),
            CardUsedDataModel(img: "1", name: "카카오 택시_0", time: "11:13", usedMoney: "-6,200원", nowMoney: "38,841원")
        ]
}

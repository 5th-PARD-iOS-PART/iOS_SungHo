//
//  DataModel.swift
//  AdditionalSeminar_SungHo
//
//  Created by  Lucid on 6/27/25.
//

import SwiftUI


struct UserInfoModel: Hashable, Identifiable, Decodable {
    let id: Int
    let username: String
    let tastePreferences : [String]
    let recentStatus: String
    let yesterdayEaten: String
    let todayTaste: [String]
}


extension UserInfoModel {
    static let mockData: UserInfoModel =
        UserInfoModel(id: 1, username: "맛있으면 울어",tastePreferences: ["#맵찔이", "#향신료 NO", "#오이 NO"], recentStatus: "다이어트", yesterdayEaten: "오코노미야끼", todayTaste: ["🥩 육류", "🍞 빵", "🇰🇷  한식", "🍽️ NO 국물", "🥘 헤비"])
}



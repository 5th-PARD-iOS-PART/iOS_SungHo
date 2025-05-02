//
//  ShoppingDataModel.swift
//  5th_HW_SungHoCHO
//
//  Created by  Lucid on 5/2/25.
//
import SwiftUI

// 데이터 모델
struct ShoppingDataModel: Identifiable, Hashable {
    let id = UUID()
    var img: String
    var title: String
    var sellPrice: String
    var originalPrice: String
    var description: String
    var discount: String?
    var sort: String?
    
    // 정렬을 위한 숫자 변환
    var sellPriceInt: Int {
        let digits = sellPrice
            .replacingOccurrences(of: "원", with: "")
            .replacingOccurrences(of: ",", with: "")
        return Int(digits) ?? 0
    }
}

// 더미 데이터
extension ShoppingDataModel {
    static let modeling: [[ShoppingDataModel]] =
        [
            [
                ShoppingDataModel(img: "Shopping1", title: "[단독 구매불가] 압도적 당도 제스프리 루비레드키위 & 골드키위 사...", sellPrice: "2,900원", originalPrice: "5,900원", description: "44.6만명이 구경함·무료배송", sort: "특가")
            ],
            [
                ShoppingDataModel(img: "Shopping2", title: "[보틀/파우치 증정] 프로티원 단백질 쉐이크 6종 x 2통 (곡물, 딸기...", sellPrice: "35,000원", originalPrice: "79,800원", description: "93.3만명이 구경함·무료배송", discount: "토스프라임 2,513원 적립", sort: "식품"),
                ShoppingDataModel(img: "Shopping3", title: "[오늘만] 스파클생수 500mL*60병/2L*24병", sellPrice: "9,900원", originalPrice: "18,000원", description: "54.9만명이 구경함·무료배송", discount: "토스프라임 693원 적립", sort: "식품"),
                ShoppingDataModel(img: "Shopping4", title: "[최초공개] 한정수량 신품종 레몬 캔디 스테비아 방울토마토", sellPrice: "6,990원", originalPrice: "12,000원", description: "52.1만명이 구경함·무료배송", discount: "토스프라임 488원 적립", sort: "식품"),
                ShoppingDataModel(img: "Shopping5", title: "[단 하루 혜택/사은품] 참존 베스트 오일세럼 4종 토스 단독구성/...", sellPrice: "12,900원", originalPrice: "40,000원", description: "64.2만명이 구경함·무료배송", discount: "토스프라임 903원 적립", sort: "뷰티"),
                ShoppingDataModel(img: "AirPods", title: "[단 하루 혜택/사은품] 성호가 실사용하던 에어팟프로!!", sellPrice: "257,000원", originalPrice: "320,000원", description: "107.2만명이 구경함·무료배송", discount: "토스프라임 2,180원 적립", sort: "전자제품"),
                ShoppingDataModel(img: "iPad", title: "[단 하루 혜택/사은품] 성호가 실사용하던 아이패드 프로!!", sellPrice: "799,000원", originalPrice: "920,000원", description: "136.5만명이 구경함·무료배송", discount: "토스프라임 8,790원 적립", sort: "전자제품"),
                ShoppingDataModel(img: "AppleWatch", title: "[단 하루 혜택/사은품] 성호가 실사용하던 애플워치10!!", sellPrice: "529,000원", originalPrice: "600,000원", description: "127.3만명이 구경함·무료배송", discount: "토스프라임 5,720원 적립", sort: "전자제품"),
                ShoppingDataModel(img: "Tumbler", title: "[단 하루 혜택/사은품] 성호가 실사용하던 텀블러!!", sellPrice: "17,000원", originalPrice: "30,000원", description: "86.5만명이 구경함·무료배송", discount: "토스프라임 1,790원 적립", sort: "특가"),
                ShoppingDataModel(img: "TShirt", title: "[단 하루 혜택/사은품] 성호가 실착하던 상의 반팔!!", sellPrice: "34,000원", originalPrice: "50,000원", description: "47.8만명이 구경함·무료배송", discount: "토스프라임 1,570원 적립", sort: "의류"),
                ShoppingDataModel(img: "Pants", title: "[단 하루 혜택/사은품] 성호가 실착하던 검정 면바지!!", sellPrice: "48,000원", originalPrice: "70,000원", description: "59.3만명이 구경함·무료배송", discount: "토스프라임 1,880원 적립", sort: "의류")
            ]
        ]
}

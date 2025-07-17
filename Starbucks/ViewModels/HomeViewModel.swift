//
//  HomeViewModel.swift
//  Starbucks
//
//  Created by 김성현 on 2025-07-17.
//

import Foundation

@Observable
class HomeViewModel {
    var nickName: String = UserDefaults.standard.string(forKey: "nickname") ?? "(설정 닉네임)"
    let coffeeList: [CoffeeModel]
    let noticeList: [NoticeModel]
    let breadList: [BreadModel]
    
    init() {
        self.coffeeList = [
            CoffeeModel(image: .conpanna, name: "에스프레소 콘파나", coffeeDetail: .conPanna(.hotOnly)),
            CoffeeModel(image: .espressoMac, name: "에스프레소 마키아또", coffeeDetail: .espresso(.iceOnly)),
            CoffeeModel(image: .iceAme, name: "아이스 카페 아메리카노", coffeeDetail: .americano(.ice)),
            CoffeeModel(image: .hotAme, name: "카페 아메리카노", coffeeDetail: .americano(.hot)),
            CoffeeModel(image: .iceCaramelMac, name: "아이스 카라멜 마키아또", coffeeDetail: .macchiato(.ice)),
            CoffeeModel(image: .hotCaramelMac, name: "카라멜 마키아또", coffeeDetail: .macchiato(.hot))
        ]
        
        self.noticeList = [
            NoticeModel(image: .recycleNotice, title: "25년 3월 일회용컵 없는 날 캠페..", content: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요."),
            NoticeModel(image: .partnerNotice, title: "스타벅스 ooo점을 찾습니다", content: "ㄴ니ㅁ"),
            NoticeModel(image: .reserveNotice, title: "2월 8일, 리저브 스프링 신규 커...", content: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요.")
        ]
        
        self.breadList = [
            BreadModel(image: .nuttyCroissant, name: "너티 크루아상"),
            BreadModel(image: .spicySausageBulgogi, name: "매콤 소시지 불고기"),
            BreadModel(image: .miniLeafPie, name: "미니 리프 파이"),
            BreadModel(image: .painAuChocolat, name: "뺑 오 쇼콜라"),
            BreadModel(image: .sausageOlivePie, name: "소시지$올리브 파이")
        ]
    }
}

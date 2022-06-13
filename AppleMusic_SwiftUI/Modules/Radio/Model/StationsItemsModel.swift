//
//  StationsItemsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import Foundation

struct StationItemsModels {
    let id = UUID()
    var image: String
    var name: String
    var title: String
}

extension StationItemsModels: Hashable {
    static var data = [
        StationItemsModels(image: "1",
                           name: "Русское радио",
                           title: "Вкусное русское радио"),
        StationItemsModels(image: "2",
                           name: "Хитовое радио",
                           title: "Классные песни"),
        StationItemsModels(image: "3",
                           name: "Современное радио",
                           title: "Слушай современную музыку"),
        StationItemsModels(image: "4",
                           name: "Радио Тандем",
                           title: "Слушаем музыку вместе с Алиханом"),
        StationItemsModels(image: "5",
                           name: "104.7 Радио",
                           title: "Лучшее радио на нашем"),
        StationItemsModels(image: "6",
                           name: "Американское радио",
                           title: "запад на западе")
    ]
}

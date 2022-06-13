//
//  CategoriesItemsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/7/22.
//

import Foundation

struct CategoriesItemsModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

extension CategoriesItemsModel {
    static let data = [
        CategoriesItemsModel(image: "пространственное аудио",
                             title: "Пространственное аудио"),
        CategoriesItemsModel(image: "хиты",
                             title: "Хиты"),
        CategoriesItemsModel(image: "хип-хоп на русском",
                             title: "Хип-хоп на русском"),
        CategoriesItemsModel(image: "летняя музыка",
                             title: "Летняя музыка"),
        CategoriesItemsModel(image: "хиты на русском",
                             title: "Хиты на русском"),
        CategoriesItemsModel(image: "хип-хоп-Рэп",
                             title: "Хип-хоп/Рэп"),
        CategoriesItemsModel(image: "DJ Микс",
                             title: "DJ Микс"),
        CategoriesItemsModel(image: "дискотеха 80-х",
                             title: "Музыка 80-х")
    ]
}

//
//  SearchMainView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/6/22.
//

import SwiftUI
import Foundation

struct SearchMainView: View {

    private let columns = Array(
        repeating: GridItem(.flexible(), spacing: Metric.columnsSpacing),
        count: Metric.columnsCount
    )

    @State private var dataModel = CategoriesItemsModel.data
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                if searchText.isEmpty {
                    Text("Поиск по категориям")
                        .font(.system(size: Metric.fontSizeForHeading))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, Metric.leadingPaddingForTitle)

                    SearchViewControllerRepresentable()
                } else {
                    ScrollView {
                        SearchNavigationView(searchText: $searchText)
                    }.padding()
                }
            }
            .navigationBarTitle(Text("Поиск"))
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: "Ваша медиатека")
        }
    }
}



extension SearchMainView {

    enum Metric {
        static let columnsSpacing: CGFloat = 20
        static let columnsCount = 2

        static let widthForImage: CGFloat = 190
        static let heightForImage: CGFloat = 130
        static let cornerRadiusForImage: CGFloat = 8

        static let widthForTextFrame: CGFloat = 170
        static let heightForTextFrame: CGFloat = 120

        static let fontSizeForHeading: CGFloat = 22
        static let fontSizeForTitleCategories: CGFloat = 14

        static let leadingPaddingForTitle: CGFloat = 10
        static let bottomPaddingForTitle: CGFloat = 15
    }
}

// MARK: - Previews

struct SearchMainView_Previews: PreviewProvider {
    static var previews: some View {
        SearchMainView()
    }
}

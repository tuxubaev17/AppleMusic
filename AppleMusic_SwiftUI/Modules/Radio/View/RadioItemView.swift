//
//  RadioItemView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import SwiftUI

struct RadioItemView: View {
    
    private let radioItems = RadioItemsModel.data
    private let rows = [GridItem(.fixed(MetricRadioItemView.rowGridItem))]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach(radioItems, id: \.self) { data in
                    VStack(alignment: .leading) {
                        
                        Text(data.category.rawValue)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: MetricRadioItemView.sizeFontCategory))
                        
                        Text(data.name)
                            .font(.system(size: MetricRadioItemView.sizeFontName))
                        
                        Text(data.title)
                            .foregroundColor(.secondary)
                            .font(.system(size: MetricRadioItemView.sizeFontTitle))
                        
                        Image(data.image)
                            .resizable()
                            .frame(width: MetricRadioItemView.widthForImage)
                            .cornerRadius(MetricRadioItemView.cornerRadiusForImage)
                    }
                }
            }.padding()
        }
    }
}

struct RadioItemView_Previews: PreviewProvider {
    static var previews: some View {
        RadioItemView()
    }
}

// MARK: - Metric

struct MetricRadioItemView {
    
    static let rowGridItem: CGFloat = 330
    
    static let sizeFontCategory: CGFloat = 15
    static let sizeFontName: CGFloat = 22
    static let sizeFontTitle: CGFloat = 22
    
    static let widthForImage: CGFloat = 380
    static let cornerRadiusForImage: CGFloat = 5
}

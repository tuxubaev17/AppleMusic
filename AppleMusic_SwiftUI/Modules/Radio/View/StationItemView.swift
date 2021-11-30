//
//  StationItemView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import SwiftUI

struct StationItemView: View {
    
    private let stationItems = StationItemsModels.data
    private let columns = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .leading) {
                
                ForEach(stationItems, id: \.self) { data in
                    HStack() {
                        
                        Image(data.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(MetricStationItemView.cornerRadiusForImage)
                            .frame(width: MetricStationItemView.widthForImage)
                        
                        VStack(alignment:.leading) {
                            
                            Text(data.name)
                                .font(.system(size: MetricStationItemView.sizeFontName))
                            
                            Text(data.title)
                                .font(.system(size: MetricStationItemView.sizeFontTittle))
                                .foregroundColor(.gray)
                        }.padding()
                    }
                    Divider()
                        .padding(.leading, MetricStationItemView.leadingPaddingForDivider)
                }
            }.padding([.leading, .trailing])
        }
    }
}

struct StationItemView_Previews: PreviewProvider {
    static var previews: some View {
        StationItemView()
    }
}

// MARK: - Metric

struct MetricStationItemView {
    
    static let cornerRadiusForImage: CGFloat = 5
    static let widthForImage: CGFloat = 100
    
    static let sizeFontName: CGFloat = 18
    static let sizeFontTittle: CGFloat = 14
    
    static let leadingPaddingForDivider: CGFloat = 110
}

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
                            .cornerRadius(5)
                            .frame(width: 100)

                        VStack(alignment:.leading) {

                            Text(data.name)
                                .font(.system(size: 18))

                            Text(data.title)
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }.padding()
                    }
                    Divider().padding(.leading, 110)
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

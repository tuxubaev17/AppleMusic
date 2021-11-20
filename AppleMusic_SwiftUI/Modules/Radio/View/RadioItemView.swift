//
//  RadioItemView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import SwiftUI

struct RadioItemView: View {
    
    private let radioItems = RadioItemsModel.data
    private let rows = [GridItem(.fixed(330))]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach(radioItems, id: \.self) { data in
                    VStack(alignment: .leading) {
                        
                        Text(data.category.rawValue)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                        
                        Text(data.name)
                            .font(.system(size: 22))
                        
                        Text(data.title)
                            .foregroundColor(.secondary)
                            .font(.system(size: 22))
                        
                        Image(data.image)
                            .resizable()
                            .frame(width:380)
                            .cornerRadius(5)
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

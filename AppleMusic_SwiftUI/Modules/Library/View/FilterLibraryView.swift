//
//  FilterLibraryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/11/21.
//

import SwiftUI

struct FilterLibraryView: View {
    
    private var filterItem = FilterItemsModel.data
    
    @State private var multiSelection = Set<String>()
    
    var body: some View {
        List(selection: $multiSelection) {
            ForEach(filterItem, id: \.self) { item in
                HStack {
                    Image(systemName: item.icon)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.red)
                        .frame(width: 25, height: 25)
                        .padding([.top, .bottom, .trailing], 10)
                    
                    Text(item.title)
                        .font(.title3)
                }
            }
            .onMove(perform: { indices, newOffset in
            })
        }
        .listStyle(InsetListStyle())
    }
}

struct FilterLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        FilterLibraryView()
    }
}

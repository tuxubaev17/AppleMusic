//
//  EmptyLibraryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/11/21.
//

import SwiftUI

struct EmptyLibraryView: View {
    var body: some View {
        VStack(alignment: .center){
            
            Text("Ищете свою музыку?")
                .font(.title2)
                .bold()
                .padding(.bottom, MetricEmptyLibraryView.bottomPaddingForTopText)
            
            Text("Здесь появится купленная Вами в\n iTunes Store музыка.")
                .font(.body)
                .foregroundColor(.gray)
        }
        .multilineTextAlignment(.center)
    }
}

struct EmptyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyLibraryView()
    }
}

// MARK: - Metric

struct MetricEmptyLibraryView {
    
    static let bottomPaddingForTopText: CGFloat = 1
}

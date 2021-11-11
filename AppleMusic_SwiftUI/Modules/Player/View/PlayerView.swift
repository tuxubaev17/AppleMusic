//
//  PlayerView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/10/21.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack {
            HStack {
                Image("WOODJU")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .cornerRadius(5)
                    .shadow(color: .gray, radius: 10, x: 0.0, y: 5.0)
                    .padding(.leading, 5)
                
                Text("WOODJU - Vacuum")
                    .foregroundColor(.black.opacity(0.7))
                    .padding(.leading, 10)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.trailing, 10)
                })
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.trailing, 5)
                })
            }
            .offset(y: 2)
            .padding()

        }
        .frame(height: 75)
        .background(Color.init("GrayColor"))
        .offset(y: -49)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

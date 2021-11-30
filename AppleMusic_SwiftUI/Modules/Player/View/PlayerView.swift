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
                    .frame(width: MetricPlayerView.widthForImage,
                           height: MetricPlayerView.heightForImage)
                    .cornerRadius(MetricPlayerView.cornerRadiusForImage)
                    .shadow(color: .gray,
                            radius: MetricPlayerView.shadowRadius,
                            x: MetricPlayerView.shadowAxisX,
                            y: MetricPlayerView.shadowAxisY)
                    .padding(.leading, MetricPlayerView.leadingPaddingForImage)
                
                Text("WOODJU - Vacuum")
                    .foregroundColor(.black.opacity(MetricPlayerView.opacityForText))
                    .padding(.leading, MetricPlayerView.leadingPaddingForText)
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.trailing, MetricPlayerView.trailingPaddingForButtonPlay)
                })
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.trailing, MetricPlayerView.trailingPaddingForButtonForward)
                })
            }
            .padding()
        }
        .frame(height: MetricPlayerView.heightForPlayerView)
        .background(Color.init("GrayColor"))
        .offset(y: MetricPlayerView.offsetFromBottomForPlayer)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

// MARK: - Metric

struct MetricPlayerView {
    
    static let cornerRadiusForImage: CGFloat = 5
    static let widthForImage: CGFloat = 55
    static let heightForImage: CGFloat = widthForImage
    static let leadingPaddingForImage: CGFloat = 5
    
    static let shadowRadius: CGFloat = 10
    static let shadowAxisX: CGFloat = 0.0
    static let shadowAxisY: CGFloat = 5.0
    
    
    static let leadingPaddingForText: CGFloat = 10
    static let opacityForText: CGFloat = 0.7
    
    static let trailingPaddingForButtonPlay: CGFloat = 10
    static let trailingPaddingForButtonForward: CGFloat = 5
    
    static let heightForPlayerView: CGFloat = 75
    static let offsetFromBottomForPlayer: CGFloat = -49
}

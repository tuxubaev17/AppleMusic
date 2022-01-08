//
//  PlayerView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/10/21.
//

import SwiftUI

struct PlayerView: View {

    @Binding var expand: Bool

    @State var volume: CGFloat = 0
    @State var offset: CGFloat = 0

    var animation: Namespace.ID
    var imageHeight = UIScreen.main.bounds.height / MetricPlayerView.screenFractionImage
    private let safeArea = UIApplication.shared.windows.first?.safeAreaInsets

    var body: some View {

        VStack {
            Capsule()
                .fill(.gray)
                .frame(width: expand ? MetricPlayerView.widthUpperСapsule : MetricPlayerView.zeroCGFloat,
                       height: expand ? MetricPlayerView.heightUpperСapsule : MetricPlayerView.zeroCGFloat)
                .padding(.vertical, expand ? MetricPlayerView.paddingUpperСapsule : MetricPlayerView.zeroCGFloat)

            HStack {
                if expand {
                    Spacer(minLength: MetricPlayerView.zeroCGFloat)
                }

                Image("WOODJU")
                    .resizable()
                    .frame(width: expand ? imageHeight : MetricPlayerView.widthForImage,
                           height: expand ? imageHeight : MetricPlayerView.heightForImage)
                    .cornerRadius(MetricPlayerView.cornerRadiusForImage)
                    .shadow(color: .gray,
                            radius: MetricPlayerView.shadowRadius,
                            x: MetricPlayerView.shadowAxisX,
                            y: MetricPlayerView.shadowAxisY)

                if !expand {
                    Text("WOODJU - Vacuum")
                        .foregroundColor(.black.opacity(MetricPlayerView.opacityForText))
                        .padding(.leading, MetricPlayerView.leadingPaddingForText)
                }

                Spacer()

                if !expand {
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
            }.padding(.horizontal)

            VStack {

                HStack {
                    if expand {
                        VStack(alignment: .leading) {
                            Text("Vacuum")
                                .bold()
                                .font(.system(size: MetricPlayerView.sizeFontTrack))
                            Text("WOODJU")
                                .foregroundColor(.gray)
                                .font(.system(size: MetricPlayerView.sizeFontArtist))
                        }.padding()
                    }

                    Spacer(minLength: MetricPlayerView.zeroCGFloat)

                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.gray)
                    }.padding()
                }.padding()

                HStack {
                    ZStack {
                        Circle()
                            .frame(width: MetricPlayerView.widthForCircle,
                                   height: MetricPlayerView.heightForCircle)
                            .padding(.trailing, MetricPlayerView.trailingPaddingCircle)

                        Capsule()
                            .fill(.gray)
                            .frame(width: MetricPlayerView.widthTrackCapsule,
                                   height: MetricPlayerView.heightTrackCapsule)
                            .padding()
                    }
                }

                HStack {
                    Text("0:00")
                        .font(.system(size: MetricPlayerView.sizeFontTime))
                        .padding(.trailing, MetricPlayerView.paddingTime)
                    Text("-3:38")
                        .font(.system(size: MetricPlayerView.sizeFontTime))
                        .padding(.leading, MetricPlayerView.paddingTime)
                }

                HStack {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }.padding()

                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }.padding()

                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }.padding()
                }

                HStack {
                    Image(systemName: "speaker.fill")
                    Slider(value: $volume).accentColor(.red)
                    Image(systemName: "speaker.wave.2.fill")
                }.padding(MetricPlayerView.paddingVolume)


                HStack(spacing: MetricPlayerView.spacingBottomButtons) {

                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundColor(.black)
                    }

                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.black)
                    }

                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                }
            }
            .frame(width: expand ? nil : MetricPlayerView.zeroCGFloat,
                   height: expand ? nil : MetricPlayerView.zeroCGFloat)
            .opacity(expand ? MetricPlayerView.opacityExpandView : MetricPlayerView.zeroCGFloat)
        }
        .frame(maxHeight: expand ?.infinity : MetricPlayerView.maxHeightPlayerView)
        .background(
            VStack(spacing: MetricPlayerView.zeroCGFloat) {
                PlayerBlurView()
            }.onTapGesture(count: 2) {
                withAnimation(.spring()) { expand = true }
            }
        )
        .offset(y: expand ? MetricPlayerView.zeroCGFloat : MetricPlayerView.offsetFromBottomForPlayer)
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
    }

    func onChanged(value: DragGesture.Value) {

        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }

    func onEnded(value: DragGesture.Value) {

        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)) {
            if value.translation.height > imageHeight {
                expand = false
            }
        }
    }
}

// MARK: - Metric

struct MetricPlayerView {

    static let screenFractionImage: CGFloat = 3.5

    static let widthUpperСapsule: CGFloat = 40
    static let heightUpperСapsule: CGFloat = 4
    static let paddingUpperСapsule: CGFloat = 40
    static let zeroCGFloat: CGFloat = 0

    static let cornerRadiusForImage: CGFloat = 5
    static let widthForImage: CGFloat = 55
    static let heightForImage: CGFloat = widthForImage
    
    static let shadowRadius: CGFloat = 10
    static let shadowAxisX: CGFloat = 0.0
    static let shadowAxisY: CGFloat = 5.0

    static let sizeFontArtist: CGFloat = 18
    static let sizeFontTrack: CGFloat = 20

    static let widthForCircle: CGFloat = 7
    static let heightForCircle: CGFloat = 10
    static let trailingPaddingCircle: CGFloat = 350

    static let widthTrackCapsule: CGFloat = 350
    static let heightTrackCapsule: CGFloat = 2

    static let sizeFontTime: CGFloat = 12
    static let paddingTime: CGFloat = 140

    static let paddingVolume: CGFloat = 40
    static let spacingBottomButtons: CGFloat = 90
    static let opacityExpandView: CGFloat = 1
    static let maxHeightPlayerView: CGFloat = 70

    static let leadingPaddingForText: CGFloat = 10
    static let opacityForText: CGFloat = 0.7
    
    static let trailingPaddingForButtonPlay: CGFloat = 10
    static let trailingPaddingForButtonForward: CGFloat = 5
    
    static let heightForPlayerView: CGFloat = 75
    static let offsetFromBottomForPlayer: CGFloat = -49
}

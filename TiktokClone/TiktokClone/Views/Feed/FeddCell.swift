//
//  FeddCell.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 11/12/2023.
//

import SwiftUI
import AVKit

struct FeddCell: View {
    let post: PostModel
    let player: AVPlayer
    
    init(post: PostModel, player: AVPlayer) {
        self.post = post
        self.player = player
    }
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.vertical, .horizontal])
            
            VStack(alignment: .leading) {
                Spacer()
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("carloz.sainze")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for takeoff!!")
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Button(action: {}, label: {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                        })
                        
                        Button(action: {}, label: {
                            VStack() {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundColor(.white)
                                
                                Text("10")
                                    .foregroundStyle(.white)
                                    .font(.callout)
                            }
                        })
                        
                        Button(action: {}, label: {
                            VStack() {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 22, height: 28)
                                    .foregroundColor(.white)
                                
                                Text("10")
                                    .foregroundStyle(.white)
                                    .font(.callout)
                            }
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "arrowshape.turn.up.backward")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundColor(.white)
                        })
                        
                        
                    }
                    
                }
                .padding(.bottom, 88)
                
            }
            .padding()
            
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
        
    }
}

#Preview {
    FeddCell(post: PostModel(id: UUID().uuidString, url: "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"), player: AVPlayer())
}

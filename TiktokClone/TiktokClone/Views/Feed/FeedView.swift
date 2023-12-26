//
//  FeedView.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 08/12/2023.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var feedView = FeedViewModel()
   @State private var selectPosition: String?
    @State private var player = AVPlayer()
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach( feedView.posts) { feed in
                    VStack {
                       FeddCell(post: feed, player: player)
                            .id(feed.id)
                            .onAppear() {
                                playInitialVideo()
                            }
                        
                    }
                }
            }
            .scrollTargetLayout()
        }
        .scrollPosition(id: $selectPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: selectPosition) { oldValue, newValue in
            playVideoOnChangePosition(id: newValue)
        }
        .onAppear(){
            player.play()
        }
        
        
    }
    
    func playInitialVideo() {
        guard selectPosition == nil, let post = feedView.posts.first, player.currentItem == nil else {
            return
        }
        playVideoOnChangePosition(id: post.id)
    }
    
    func playVideoOnChangePosition(id: String?) {
        guard let currentObj = feedView.posts.first(where: {$0.id == id}) else { return }
        player.replaceCurrentItem(with: nil)
        let playItem = AVPlayerItem(url: URL(string: currentObj.url)!)
        player.replaceCurrentItem(with: playItem)
        player.play()
      
    }
}

#Preview {
    FeedView()
}

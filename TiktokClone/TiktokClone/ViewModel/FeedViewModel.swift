//
//  FeedViewModel.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 13/12/2023.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [PostModel]()
    
    var arrVideos = ["https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
                     "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
                     "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
                     "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4" ,
                     "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
                     "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
    ]
    
    init() {
        self.fetchData()
    }
    
    func fetchData() {
        self.posts = [
            .init(id: NSUUID().uuidString, url: arrVideos[0]),
            .init(id: NSUUID().uuidString, url: arrVideos[1]),
            .init(id: NSUUID().uuidString, url: arrVideos[2]),
            .init(id: NSUUID().uuidString, url: arrVideos[3]),
            .init(id: NSUUID().uuidString, url: arrVideos[4]),
            .init(id: NSUUID().uuidString, url: arrVideos[5])
        ]
    }
}

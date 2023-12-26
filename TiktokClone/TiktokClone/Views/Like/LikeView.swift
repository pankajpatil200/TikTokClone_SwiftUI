//
//  LikeView.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 08/12/2023.
//

import SwiftUI

struct LikeView: View {
    var body: some View {
        NavigationStack() {
            ScrollView() {
                LazyVStack(spacing: 20) {
                    ForEach(0 ..< 20) { item in
                        LikeViewCell()
                        
                        Divider()
                        
                    }
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
        }
    }
}

#Preview {
    LikeView()
}

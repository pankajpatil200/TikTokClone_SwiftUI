//
//  GridView.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 11/12/2023.
//

import SwiftUI

struct GridView: View {
    private var item = [GridItem(.flexible(), spacing: 2), GridItem(.flexible(), spacing: 2), GridItem(.flexible(), spacing: 2)]
    private let width = (UIScreen.main.bounds.width/3) - 2
    var body: some View {
        LazyVGrid(columns: item, spacing: 2) {
            ForEach(0 ..< 20) { list in
                Rectangle()
                    .frame(width: width, height: 150)
                    .clipped()
            }
        }
    }
}

#Preview {
    GridView()
}

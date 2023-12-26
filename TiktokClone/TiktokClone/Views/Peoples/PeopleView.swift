//
//  PeopleView.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 08/12/2023.
//

import SwiftUI

struct PeopleView: View {
    var body: some View {
        NavigationStack() {
            ScrollView() {
                ForEach(0 ..< 20) { item in
                    PeopleCell()
                        .background(.clear)
                        .padding(.horizontal)
                    Divider()
                }
                .navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        
    }
}

#Preview {
    PeopleView()
}

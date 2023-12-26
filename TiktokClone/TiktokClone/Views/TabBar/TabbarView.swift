//
//  TabbarView.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 08/12/2023.
//

import SwiftUI

struct TabbarView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: selectedTab == 0 ?"house.fill":"house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill:.none)
                }
                .onAppear() {
                    selectedTab = 0
                }
                .tag(0)
            
            PeopleView()
                .tabItem { 
                    Label("Peoples", systemImage: selectedTab == 1 ?"person.2.fill":"person.2")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill:.none)
                }
                .onAppear() {
                    selectedTab = 1
                }
                .tag(1)
            
            PlusView()
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear() {
                    selectedTab = 2
                }
                .tag(2)
            
            LikeView()
                .tabItem {
                    Label("Inbox", systemImage: selectedTab == 3 ?"heart.fill":"heart")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill:.none)
                }
                .onAppear() {
                    selectedTab = 3
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: selectedTab == 4 ?"person.fill":"person")
                        .environment(\.symbolVariants, selectedTab == 4 ? .fill:.none)
                }
                .onAppear() {
                    selectedTab = 4
                }
                .tag(4)
            
        }
        .tint(.black)
        
    }
}

#Preview {
    TabbarView()
}

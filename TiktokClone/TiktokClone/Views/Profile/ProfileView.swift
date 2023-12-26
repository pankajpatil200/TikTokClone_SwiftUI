//
//  ProfileView.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 08/12/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack() {
            ScrollView() {
                VStack(spacing: 30) {
                    ProfileHeaderView()
                    
                    GridView()
                    
                }
                .padding(.top)
                
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
            
            
        }
    }
}

#Preview {
    ProfileView()
}

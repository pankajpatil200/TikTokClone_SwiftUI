//
//  ProfileHeaderView.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 11/12/2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        //Profile
        VStack(spacing: 20) {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(.circle)
                    .foregroundColor(.gray)
                Text("Pankaj Patil")
                    .font(.title2)
                    .fontWeight(.semibold)
                
            }
            HStack() {
                HeaderStatusView(value: 10, title: "Following")
                HeaderStatusView(value: 10, title: "Followers")
                HeaderStatusView(value: 10, title: "Likes")
            }
            
            Button(action: {}, label: {
                Text("Edit Profile")
            })
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            .frame(width: 380, height: 44)
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    ProfileHeaderView()
}

struct HeaderStatusView: View {
    var value: Int
    var title: String
    var body: some View {
        VStack() {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            Text(title)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}

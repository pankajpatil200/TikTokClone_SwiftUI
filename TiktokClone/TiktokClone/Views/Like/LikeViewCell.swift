//
//  LikeViewCell.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 11/12/2023.
//

import SwiftUI

struct LikeViewCell: View {
    var body: some View {
        HStack() {
            Image(systemName: "person.circle.fill")
                 .resizable()
                .frame(width: 30, height: 30)
                .clipShape(.circle)
                .foregroundStyle(Color(.systemGray))
            
            HStack() {
                Text("Pankaj Patil ")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                Text("Like one of your post Breake dance of prabhu deva  ")
                    .font(.footnote) +
                Text("3d")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image("IMG_0707")
                 .resizable()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
        }
    }
}

#Preview {
    LikeViewCell()
}

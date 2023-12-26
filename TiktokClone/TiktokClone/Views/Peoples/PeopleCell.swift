//
//  PeopleCell.swift
//  TiktokClone
//
//  Created by Pankaj Patil on 11/12/2023.
//

import SwiftUI

struct PeopleCell: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                 .resizable()
                .frame(width: 60, height: 60)
                .clipShape(.circle)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading) {
                Text("test_user")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("tester")
                
            }
            Spacer()

        }
        .background(.clear)
       // .padding(.leading, 10)
        
    }
        
    
}

#Preview {
    PeopleCell()
}

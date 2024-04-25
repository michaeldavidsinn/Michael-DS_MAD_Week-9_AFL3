//
//  LandmarkRow.swift
//  Michael DS_MAD_Week 9_AFL3
//
//  Created by student on 19/04/24.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}


#Preview {
    let landmarks = ModelData().landmarks
       return Group {
           LandmarkRow(landmark: landmarks[0])
           LandmarkRow(landmark: landmarks[1])
       }
}

//
//  SwiftUIView.swift
//  Michael DS_MAD_Week 9_AFL3
//
//  Created by student on 19/04/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    CircleImage()
}

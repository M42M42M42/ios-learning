//
//  TimelinkContentLikeView.swift
//  State And Data Flow
//
//  Created by Jian on 2022/2/8.
//

import SwiftUI

struct TimelinkContentLikeView: View {
    let like: [String]
    
    var body: some View {
        HStack {
            Image(systemName: "heart")
                .foregroundColor(.white)
            ForEach(like, id: \.self) { item in
                Text(item)
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .background(.gray)
    }
}

struct TimelinkContentLikeView_Previews: PreviewProvider {
    static var previews: some View {
        TimelinkContentLikeView(like: ["草莓🐰"])
    }
}

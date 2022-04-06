//
//  TimelineHeaderView.swift
//  State And Data Flow
//
//  Created by Jian on 2022/2/8.
//

import SwiftUI

struct TimelineHeaderView: View {
    let nickname: String
    let profileImageName: String
    let backgroundImageName: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(backgroundImageName)
                .resizable()
                .scaledToFill()
            HStack {
                Text(nickname)
                    .foregroundColor(.white)
                    .bold()
                Image(profileImageName)
                    .resizable()
                    .frame(width: 70,
                           height: 70)
            }
            .offset(x: -15, y: 15)
        }
        .padding(EdgeInsets(top: 0,
                            leading: 0,
                            bottom: 20,
                            trailing: 0))
    }
}

struct TimelineHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineHeaderView(nickname: "桃子猪2222222", profileImageName: "timeline_profile_image", backgroundImageName: "timeline_profile_background")
    }
}

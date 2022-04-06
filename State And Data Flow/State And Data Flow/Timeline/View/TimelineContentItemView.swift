//
//  TimelineContentItemView.swift
//  State And Data Flow
//
//  Created by Jian on 2022/2/8.
//

import SwiftUI

struct TimelineContentItemView: View {
    let profileImageName: String
    let profileNick: String
    let content: String
    let singlePhotoName: String?
    let like: [String]?
    
    var body: some View {
        HStack(alignment: .top) {
            Image(profileImageName)
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 10) {
                Text(profileNick)
                    .bold()
                Text(content)
                    .fontWeight(.light)
                if let singlePhotoName = singlePhotoName {
                    Image(singlePhotoName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                }
                if let like = like {
                    TimelinkContentLikeView(like: like)
                }
            }
            Spacer()
        }
    }
}

struct TimelineContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪", content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
                                    singlePhotoName:
                                        nil,
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: nil)
            TimelineContentItemView(profileImageName: "timeline_profile_image",
                                    profileNick: "桃子猪",
                                    content: "不是我矫情,这年呐~,就是得和家人一起过才有味道.",
                                    singlePhotoName: "timeline_profile_image_lu_photo1",
                                    like: ["草莓兔"])
        }
    }
}

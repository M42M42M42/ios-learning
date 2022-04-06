//
//  ProfileAvatarView.swift
//  State And Data Flow
//
//  Created by Xiao Li on 2022/4/1.
//

import SwiftUI

struct ProfileAvatarView: View {
    @EnvironmentObject var profileModel: ProfileModel
    @State var showMore = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(profileModel.avatar)
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
        }
        .toolbar {
            Button {
                showMore = true
            } label: {
                Image(systemName: "ellipsis")
            }
            .confirmationDialog("修改头像", isPresented: $showMore) {
                Button("修改头像") {
                    profileModel.changeAvatar()
                }
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("更多")
            }
        }
    }
}

struct ProfileAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAvatarView()
    }
}

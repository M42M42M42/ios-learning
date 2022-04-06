//
//  ProfileView.swift
//  State And Data Flow
//
//  Created by Xiao Li on 2022/4/1.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: {
                    ProfileAvatarView()
                }, label: {
                    Image(profileModel.avatar)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                    VStack {
                        Text("桃子猪")
                            .padding(5)
                        Spacer()
                    }
                })
            }
            .listStyle(.plain)
            .navigationTitle("我")
            .navigationBarTitleDisplayMode(.inline)
        }
//        .navigationViewStyle(.stack)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(ProfileModel(avatar: "timeline_profile_image"))
    }
}

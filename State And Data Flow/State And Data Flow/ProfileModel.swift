//
//  ProfileModel.swift
//  State And Data Flow
//
//  Created by Xiao Li on 2022/4/1.
//

import Foundation

@MainActor class ProfileModel: ObservableObject {
    @Published var avatar: String
    
    init(avatar: String) {
        self.avatar = avatar
    }
    
    func changeAvatar() {
        self.avatar = "timeline_profile_image_lu"
    }
}

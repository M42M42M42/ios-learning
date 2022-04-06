//
//  Application.swift
//  State And Data Flow
//
//  Created by Jian on 2022/2/8.
//

import SwiftUI

@main
struct Application: App {
    @StateObject var profileModel: ProfileModel = ProfileModel(avatar: "timeline_profile_image")
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(profileModel)
        }
    }
}

//
//  TimelineView.swift
//  State And Data Flow
//
//  Created by Jian on 2022/2/8.
//

import SwiftUI

struct TimelineView: View {
    @EnvironmentObject var profileModel: ProfileModel
    
    var body: some View {
        List {
            TimelineHeaderView(nickname: "桃子猪", profileImageName: profileModel.avatar, backgroundImageName: "timeline_profile_background")
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            TimelineContentView()
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .navigationBarTitle("朋友圈")
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}

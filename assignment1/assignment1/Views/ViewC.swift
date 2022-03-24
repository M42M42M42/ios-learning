//
//  ViewC.swift
//  assignment1
//
//  Created by Xiao Li on 2022/3/24.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ViewFriends()) {
                    HStack {
                        Image(systemName: "circle.circle.fill")
                            .foregroundColor(.blue)
                        Text("朋友圈")
                    }
                }
                HStack {
                    Image(systemName: "gamecontroller.fill")
                        .foregroundColor(.blue)
                    Text("游戏")
                }
                HStack {
                    Image(systemName: "circle.dashed")
                        .foregroundColor(.blue)
                    Text("小程序")
                }
            }
            .navigationBarTitle("发现", displayMode: .inline)
        }
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}

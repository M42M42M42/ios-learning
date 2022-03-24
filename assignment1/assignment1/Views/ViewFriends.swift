//
//  ViewFriends.swift
//  assignment1
//
//  Created by Xiao Li on 2022/3/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        HStack {
            VStack {
                Image("avatar")
                    .resizable()
                    .frame(width: 60, height: 60)
                Spacer()
            }
            .padding(3)
            
            VStack {
                HStack {
                    Text("小明")
                        .font(.title3.bold())
                    Spacer()
                }
                .padding(1)
                HStack {
                    Text("今天天气好～今天天气好～今天天气好～今天天气好～今天天气好～")
                        .font(.body)
                    Spacer()
                }
                .padding(1)
                HStack {
                    Image("post")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(alignment: .center)
                    Spacer()
                }
                .padding(1)
                HStack {
                    Image(systemName: "heart")
                    Text("小王")
                    Text("小张")
                    Spacer()
                }
                .padding(1)
                .frame(alignment: .leading)
                .background(Color.gray)
            }
            .padding(1)
        }
    }
}

struct ViewFriends: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ZStack {
                        Image("back")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Text("小明")
                                    .font(.title.bold())
                                    .foregroundColor(.white)
                                Image("avatar")
                                    .resizable()
                                    .frame(width: 80, height: 80, alignment: .bottom)
                            }
                        }
                    }
                    ListView()
                    ListView()
                    ListView()
                }
            }
            .navigationBarTitle("朋友圈", displayMode: .inline)
        }
    }
}

struct ViewFriends_Previews: PreviewProvider {
    static var previews: some View {
        ViewFriends()
    }
}

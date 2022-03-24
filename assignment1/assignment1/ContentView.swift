//
//  ContentView.swift
//  assignment1
//
//  Created by Xiao Li on 2022/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ViewA()
                .tabItem() {
                    Image(systemName: "message.fill")
                    Text("微信")
                }
            ViewB()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("通讯录")
                }
            ViewC()
                .tabItem() {
                    Image(systemName: "safari.fill")
                    Text("发现")
                }
            ViewD()
                .tabItem() {
                    Image(systemName: "person.fill")
                    Text("我")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

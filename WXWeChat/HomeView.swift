//
//  HomeView.swift
//  WXWeChat
//
//  Created by 610582 on 2022/11/15.
//

import SwiftUI

struct HomeView: View {
    var body: some View {

        TabView {

            MessageList()

            Text("通讯录")
                .tabItem {
                    Image(systemName: "book")
                    Text("通讯录")
                }

            Text("发现")
                .tabItem {
                    Image(systemName: "location.circle")
                    Text("发现")
                }

            Text("我")
                .tabItem {
                    Image(systemName: "person")
                    Text("我")
                }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

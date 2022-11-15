//
//  MessageList.swift
//  WXWeChat
//
//  Created by 610582 on 2022/11/15.
//

import SwiftUI

struct MessageList: View {

    var message: [Message] = {
        var messages: [Message] = []
        for i in 1...20 {
            let message = Message(id: i,
                                  imageName: "JackMa",
                                  nickName: "马云\(i)",
                                  messageText: "花呗还了吗\(i)",
                                  messageDate: "上午 6:00")
            messages.append(message)
        }
        return messages
    }()

    var body: some View {

        NavigationView {

            List(message) { msg in
                ZStack {
                    NavigationLink {
                        MessageDetail(title: msg.nickName)
                    } label: {
                        EmptyView()
                    }.opacity(0)
                    MessagRow(message: msg)


//                    NavigationLink {
//                        MessageDetail(title: msg.nickName)
//                    } label: {
//                        MessagRow(message: msg)
//                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("微信")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    print("popover弹出框")
                } label: {
                    Image(systemName: "plus.circle").foregroundColor(.primary)
                }.padding(.horizontal)

                //如需在navigationItem左右放单个视图则用ToolbarItem包起来(可写多个ToolbarItem)
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Text("xx")
//                }
                //如需在navigationItem左右放多个视图则用ToolbarItemGroup包起来(可写多个ToolbarItemGroup)
//                ToolbarItemGroup(placement: .navigationBarLeading) {
//                    Text("xx")
//                    Image(systemName: "plus.circle")
//                }

            }
        }
        .navigationViewStyle(.stack)
        .tabItem {
            Image(systemName: "message.fill")
            Text("微信")
        }

    }
}

struct MessageList_Previews: PreviewProvider {
    static var previews: some View {
        MessageList()
    }
}

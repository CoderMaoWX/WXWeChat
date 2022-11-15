//
//  Message.swift
//  WXWeChat
//
//  Created by 610582 on 2022/11/15.
//

import Foundation

struct Message: Identifiable {
    let id: Int
    let imageName: String
    let nickName: String
    let messageText: String
    let messageDate: String
}

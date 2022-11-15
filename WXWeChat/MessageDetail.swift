//
//  MessageDetail.swift
//  WXWeChat
//
//  Created by 610582 on 2022/11/15.
//

import SwiftUI

struct MessageDetail: View {

    let title: String

    var body: some View {
        Text(title)
    }
}

struct MessageDetail_Previews: PreviewProvider {
    static var previews: some View {
        MessageDetail(title: "详情")
    }
}

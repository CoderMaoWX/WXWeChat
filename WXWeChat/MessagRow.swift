//
//  MessagRow.swift
//  WXWeChat
//
//  Created by 610582 on 2022/11/15.
//

import SwiftUI

struct MessagRow: View {

    let message: Message

    var body: some View {
        HStack {
            Image(message.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .cornerRadius(3)

            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(message.imageName)
                        .font(.system(size: 17))
                    Text(message.messageText)
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text(message.messageDate)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }.padding([.top, .bottom], 8)
    }
}

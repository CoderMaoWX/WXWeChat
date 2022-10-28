//
//  ContentView.swift
//  WXWeChat
//
//  Created by 610582 on 2022/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack (spacing: 30) {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!89888")
//        }
//        .padding(.horizontal, 10)
        
        List(0 ..< 20) { item in
            
            HStack {
                Image("men_winter")
                HStack (alignment: .top) {
                    VStack (alignment: .leading, spacing: 40) {
                        Text("Go shopping new ?")
                        Text("Buy men winter dfghfghfgh")
                    }
                    Spacer()
                    Text("Sep 28/2022 454545")
                }
            }
            
        }.listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  HeaderView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    var body: some View {
        ZStack {
            Color.gray
            Text(text)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 0))
        }.frame(maxWidth: .infinity, maxHeight: 24)
    }
}

struct SubHeaderView: View {
    let text: String
    var body: some View {
        ZStack {
            Color.init(.systemGray5)
            Text(text)
                .font(.system(size: 14))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 0))
        }.frame(maxWidth: .infinity, maxHeight: 16)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HeaderView(text: "Header")
            SubHeaderView(text: "SubHeader")
        }
    }
}

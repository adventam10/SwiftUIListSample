//
//  NoneSeparatorView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

struct NoneSeparatorView: View {

    let title: String
    private let rows = Array(0...10)

    var body: some View {
        List (rows, id: \.self) {
            Text("Row: \($0)")
        }
        .onAppear {
            // iOS14では効かない
            // iOS15からならlistRowSeparator(_:edges:)が使えるかも？
            UITableView.appearance().separatorStyle = .none
        }.onDisappear {
            UITableView.appearance().separatorStyle = .singleLine
        }.navigationTitle(title)
    }
}

struct NoneSeparatorView_Previews: PreviewProvider {
    static var previews: some View {
        NoneSeparatorView(title: "None Separator")
    }
}

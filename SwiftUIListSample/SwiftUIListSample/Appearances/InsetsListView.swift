//
//  InsetsListView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct InsetsListView: View {

    let title: String

    var body: some View {
        List {
            Group {
                Text("All:0").listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                Text("All:8").listRowInsets(.init(top: 8, leading: 8, bottom: 8, trailing: 8))
                Text("T:0,L:16,B:16,T:0").listRowInsets(.init(top: 0, leading: 16, bottom: 16, trailing: 0))
                Text("T:64,L:64,B:0,T:0").listRowInsets(.init(top: 64, leading: 64, bottom: 0, trailing: 0))
            }
            //.background(Color(.red))

        }.navigationTitle(title)
    }
}

struct InsetsListView_Previews: PreviewProvider {
    static var previews: some View {
        InsetsListView(title: "Insets List")
    }
}

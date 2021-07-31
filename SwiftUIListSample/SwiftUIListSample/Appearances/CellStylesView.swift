//
//  CellStylesView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

struct CellStylesView: View {

    let title: String

    var body: some View {
        List {
            Text("Basic")

            HStack {
                Image(systemName: "person.crop.square.fill")
                    .foregroundColor(.blue)
                Text("Basic")
            }

            HStack {
                Text("Right")
                Spacer()
                Text("Detail")
            }

            HStack {
                Text("Left")
                Text("Detail")
            }.listRowInsets(.init(top: 0, leading: 64, bottom: 0, trailing: 0))

            HStack {
                Image(systemName: "person.crop.square.fill")
                    .foregroundColor(.blue)
                Text("Right")
                Spacer()
                Text("Detail")
            }

            VStack(alignment: .leading) {
                Text("Subtitle")
                Text("Detail").font(.system(size: 12))
            }

            HStack {
                Image(systemName: "person.crop.square.fill")
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text("Subtitle")
                    Text("Detail").font(.system(size: 12))
                }
            }
        }.navigationTitle(title)
    }
}

struct CellStylesView_Previews: PreviewProvider {
    static var previews: some View {
        CellStylesView(title: "Cell Styles")
    }
}

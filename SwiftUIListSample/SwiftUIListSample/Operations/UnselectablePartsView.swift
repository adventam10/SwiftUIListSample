//
//  UnselectablePartsView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct UnselectablePartsView: View {

    struct Item: Identifiable {
        let id = UUID()
        let selectable: Bool
    }

    let title: String
    private let items: [Item] = [
        .init(selectable: true),
        .init(selectable: true),
        .init(selectable: false),
        .init(selectable: true),
        .init(selectable: false)
    ]
    @State private var selection: UUID?

    var body: some View {
        List {
            ForEach(items) { item in
                if item.selectable {
                    Button {
                        selection = item.id
                    } label: {
                        Text("Selectable")
                    }.listRowBackground(selection == item.id ? Color(.systemGray4) : Color(.white))
                } else {
                    Text("Unselectable")
                }
            }
        }
        .navigationTitle(title)
    }
}

struct UnselectablePartsView_Previews: PreviewProvider {
    static var previews: some View {
        UnselectablePartsView(title: "Unselectable Parts")
    }
}

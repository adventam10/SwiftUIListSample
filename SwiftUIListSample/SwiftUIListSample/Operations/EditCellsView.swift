//
//  EditCellsView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct EditCellsView: View {

    struct Item: Identifiable {
        let id = UUID()
        let name: String
        let movable: Bool
        let deletable: Bool
    }

    let title: String
    @State private var items: [Item] = [
        .init(name: "Not Editable", movable: false, deletable: false),
        .init(name: "Movable", movable: true, deletable: false),
        .init(name: "Deletable", movable: false, deletable: true),
        .init(name: "Movable & Deletable", movable: true, deletable: true)
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                Text(item.name)
                    .deleteDisabled(!item.deletable)
                    .moveDisabled(!item.movable)
            }.onMove { (indexSet, index) in
                items.move(fromOffsets: indexSet,
                           toOffset: index)
            }.onDelete { indexSet in
                items.remove(atOffsets: indexSet)
            }
        }
        .toolbar { EditButton() }
        .navigationTitle(title)
    }
}

struct EditCellsView_Previews: PreviewProvider {
    static var previews: some View {
        EditCellsView(title: "Edit Cells")
    }
}

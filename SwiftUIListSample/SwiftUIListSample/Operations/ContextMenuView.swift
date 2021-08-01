//
//  ContextMenuView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct ContextMenuView: View {

    let title: String
    private let rows = Array(0...10)

    var body: some View {
        List(rows, id: \.self) { row in
            Text("Row: \(row)").contextMenu {
                Button("♥️ - Hearts", action: selectHearts)
                Button("♣️ - Clubs", action: selectClubs)
                Button("♠️ - Spades", action: selectSpades)
                Button("♦️ - Diamonds", action: selectDiamonds)
            }
        }
        .navigationTitle(title)
    }

    private func selectHearts() {
        print(#function)
    }
    private func selectClubs() {
        print(#function)
    }
    private func selectSpades() {
        print(#function)
    }
    private func selectDiamonds() {
        print(#function)
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView(title: "Context Menu")
    }
}

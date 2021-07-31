//
//  ColorCellsView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

struct ColorCellsView: View {

    let title: String

    var body: some View {
        List {
            Group {
                Text("Row: 0")
                    .listRowBackground(Color(.systemRed))
                Text("Row: 1")
                    .listRowBackground(Color(.systemOrange))
                Text("Row: 2")
                    .listRowBackground(Color(.systemYellow))
                Text("Row: 3")
                    .listRowBackground(Color(.systemGreen))
                Text("Row: 4")
                    .listRowBackground(Color(.systemTeal))
                Text("Row: 5")
                    .listRowBackground(Color(.systemBlue))
                Text("Row: 6")
                    .listRowBackground(Color(.systemPurple))
            }.foregroundColor(.white)
        }.navigationTitle(title)
    }
}

struct ColorCellsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCellsView(title: "Color Cells")
    }
}

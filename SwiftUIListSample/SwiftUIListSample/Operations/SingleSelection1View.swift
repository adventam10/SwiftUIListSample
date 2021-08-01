//
//  SingleSelection1View.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct SingleSelection1View: View {
    let title: String
    private let rows = Array(0...10)
    @State private var selection: Int?

    var body: some View {
        List {
            ForEach(rows, id: \.self) { row in
                Button {
                    selection = row
                } label: {
                    Text("Row: \(row)")
                }.listRowBackground(selection == row ? Color(.systemGray4) : Color(.white))
            }
        }
        .navigationTitle(title)
    }
}

struct SingleSelection1View_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection1View(title: "Single Selection1")
    }
}

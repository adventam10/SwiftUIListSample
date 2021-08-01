//
//  SingleSelection2View.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct SingleSelection2View: View {

    let title: String
    private let rows = Array(0...10)
    @State private var selection: Int?

    var body: some View {
        List(rows, id: \.self, selection: $selection) { row in
            Text("Row: \(row)")
        }
        .environment(\.editMode, .constant(.active))
        .navigationTitle(title)
    }
}

struct SingleSelection2View_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection2View(title: "Single Selection2")
    }
}

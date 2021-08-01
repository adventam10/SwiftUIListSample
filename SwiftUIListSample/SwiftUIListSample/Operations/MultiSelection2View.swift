//
//  MultiSelection2View.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct MultiSelection2View: View {
    
    let title: String
    private let rows = Array(0...10)
    @State private var selections = Set<Int>()

    var body: some View {
        List(rows, id: \.self, selection: $selections) { row in
            Text("Row: \(row)")
        }
        .environment(\.editMode, .constant(.active))
        .navigationTitle(title)
    }
}

struct MultiSelection2View_Previews: PreviewProvider {
    static var previews: some View {
        MultiSelection2View(title: "Multi Selection2")
    }
}

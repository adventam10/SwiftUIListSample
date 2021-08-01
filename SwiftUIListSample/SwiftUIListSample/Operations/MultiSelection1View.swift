//
//  MultiSelection1View.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct MultiSelection1View: View {

    let title: String
    private let rows = Array(0...10)
    @State private var selections = Set<Int>()

    var body: some View {
        List(rows, id: \.self) { row in
            Button {
                if selections.contains(row) {
                    selections.remove(row)
                } else {
                    selections.insert(row)
                }
            } label: {
                HStack {
                    Text("Row: \(row)")
                    if selections.contains(row) {
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
        .navigationTitle(title)
    }
}

struct MultiSelection1View_Previews: PreviewProvider {
    static var previews: some View {
        MultiSelection1View(title: "Multi Selection1")
    }
}

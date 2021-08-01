//
//  ScrollToRowView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct ScrollToRowView: View {

    let title: String
    private let rows = Array(0...100)
    var body: some View {
        ScrollViewReader { proxy in
            List(rows, id: \.self) { row in
                Text("Row: \(row)").id(row)
            }
            VStack(spacing: 16) {
                Button("Scroll to Top") {
                    withAnimation {
                        proxy.scrollTo(rows.first!, anchor: .top)
                    }
                }
                Button("Scroll to Bottom") {
                    withAnimation {
                        proxy.scrollTo(rows.last!, anchor: .top)
                    }
                }
                Button("Scroll to Random") {
                    withAnimation {
                        proxy.scrollTo(rows.randomElement()!, anchor: .top)
                    }
                }
            }
        }.navigationTitle(title)
    }
}

struct ScrollToRowView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollToRowView(title: "Scroll To Row")
    }
}

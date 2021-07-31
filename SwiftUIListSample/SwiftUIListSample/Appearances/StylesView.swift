//
//  StylesView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

struct StylesView: View {
    let title: String
    private let rows = Array(0...0)

    var body: some View {
        VStack {
            Group {
                HeaderView(text: "DefaultListStyle")
                List {
                    Section(header: Text("header"),
                            footer: Text("footer")) {
                        ForEach(rows, id: \.self) { row in
                            Text("Row: \(row)")
                        }
                    }
                }
                .listStyle(DefaultListStyle())

                HeaderView(text: "GroupedListStyle")
                List {
                    Section(header: Text("header"),
                            footer: Text("footer")) {
                        ForEach(rows, id: \.self) { row in
                            Text("Row: \(row)")
                        }
                    }
                }
                .listStyle(GroupedListStyle())

                HeaderView(text: "InsetListStyle")
                List {
                    Section(header: Text("header"),
                            footer: Text("footer")) {
                        ForEach(rows, id: \.self) { row in
                            Text("Row: \(row)")
                        }
                    }
                }
                .listStyle(InsetListStyle())
            }

            Group {
                HeaderView(text: "InsetGroupedListStyle")
                List {
                    Section(header: Text("header"),
                            footer: Text("footer")) {
                        ForEach(rows, id: \.self) { row in
                            Text("Row: \(row)")
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())

                HeaderView(text: "PlainListStyle")
                List {
                    Section(header: Text("header"),
                            footer: Text("footer")) {
                        ForEach(rows, id: \.self) { row in
                            Text("Row: \(row)")
                        }
                    }
                }
                .listStyle(PlainListStyle())

                HeaderView(text: "SidebarListStyle")
                List {
                    Section(header: Text("header"),
                            footer: Text("footer")) {
                        ForEach(rows, id: \.self) { row in
                            Text("Row: \(row)")
                        }
                    }
                }
                .listStyle(SidebarListStyle())
            }
        }
        .navigationTitle(title)
    }
}

struct StylesView_Previews: PreviewProvider {
    static var previews: some View {
        StylesView(title: "Styles")
    }
}

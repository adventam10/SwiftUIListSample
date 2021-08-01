//
//  AccordionView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct AccordionView: View {

    struct FileItem: Identifiable {
        let id = UUID()
        var name: String
        var children: [FileItem]? = nil
        var isDirectory: Bool {
            return children != nil
        }
    }

    private let files: [FileItem] = [
        FileItem(name: "AAA", children: [
            FileItem(name: "BBB", children: [
                FileItem(name: "CCC", children: [
                    FileItem(name: "test_001.txt"),
                    FileItem(name: "test_002.txt")
                ]),
                FileItem(name: "DDD", children: [
                    FileItem(name: "test_003.txt")
                ]),
                FileItem(name: "EEE", children: [])
            ]),
            FileItem(name: "FFF", children: [
                FileItem(name: "GGG", children: [
                    FileItem(name: "HHH", children: [
                        FileItem(name: "III", children: [
                            FileItem(name: "test_004.txt")
                        ])
                    ])
                ])
            ])
        ]),
        FileItem(name: "test_005.txt", children: nil)
    ]

    let title: String

    var body: some View {
        List(files, children: \.children) { item in
            HStack {
                Image(systemName: item.isDirectory ? "folder.fill" : "doc.text.fill")
                    .foregroundColor(Color(.systemBlue))
                Text(item.name)
            }
        }.navigationTitle(title)
    }
}

struct AccordionView_Previews: PreviewProvider {
    static var previews: some View {
        AccordionView(title: "Accordion")
    }
}

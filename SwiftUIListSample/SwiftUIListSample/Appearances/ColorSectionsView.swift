//
//  ColorSectionsView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/08/01.
//

import SwiftUI

struct ColorSectionsView: View {
    let title: String
    private let rows = Array(0...6)
    private let colors: [UIColor] = [
        .systemRed, .systemOrange, .systemYellow,
        .systemGreen, .systemTeal, .systemBlue,
        .systemPurple
    ]
    var body: some View {
        List {
            ForEach(rows, id: \.self) {
                Section(header: ColorSectionView(title: "Section Header: \($0)", color: Color(colors[$0]))) {
                    Text("Row: 0")
                }
            }
        }.navigationTitle(title)
    }
}

struct ColorSectionView: View {
    let title: String
    let color: Color

    var body: some View {
        Text(title)
            .padding()
            .frame(width: UIScreen.main.bounds.width, height: 28, alignment: .leading)
            .background(color)
            .foregroundColor(.white)
    }
}

struct ColorSectionsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSectionsView(title: "Color Sections")
    }
}

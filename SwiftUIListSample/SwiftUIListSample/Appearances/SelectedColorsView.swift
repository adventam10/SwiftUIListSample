//
//  SelectedColorsView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

struct SelectedColorsView: View {
    
    let title: String
    @State private var selection: Int?
    private let rows = Array(0...6)
    private let colors: [UIColor] = [
        .systemRed, .systemOrange, .systemYellow,
        .systemGreen, .systemTeal, .systemBlue,
        .systemPurple
    ]

    var body: some View {
        List {
            ForEach(rows, id: \.self) { index in
                let color = colors[index]
                Button {
                    selection = index
                } label: {
                    Text("Row: \(index)")
                        .foregroundColor(selection == index ? .white : .black)
                }.listRowBackground(selection == index ? Color(color) : Color(.white))
            }
        }.navigationTitle(title)
    }
}

struct SelectedColorsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedColorsView(title: "Selected Colors")
    }
}

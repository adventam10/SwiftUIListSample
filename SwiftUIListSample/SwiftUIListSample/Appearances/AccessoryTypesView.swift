//
//  AccessoryTypesView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

struct AccessoryTypesView: View {

    let title: String

    var body: some View {
        List {
            Text("None")

            HStack {
                Text("DetailButton")
                Spacer()
                Image(systemName: "info.circle")
                    .foregroundColor(.blue)
            }

            HStack {
                Text("DetailDisclosureButton")
                Spacer()
                Image(systemName: "info.circle")
                    .foregroundColor(.blue)
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }

            HStack {
                Text("DisclosureIndicator")
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("Checkmark")
                Spacer()
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            }
        }.navigationTitle(title)
    }
}

struct AccessoryTypesView_Previews: PreviewProvider {
    static var previews: some View {
        AccessoryTypesView(title: "Accessory Types")
    }
}

//
//  ContentView.swift
//  SwiftUIListSample
//
//  Created by am10 on 2021/07/31.
//

import SwiftUI

enum AppearancesMenu: Int, CaseIterable, Identifiable {

    case styles
    case cellStyles
    case accessoryTypes
    case colorCells
    case noneSeparator
    case selectedColors
    case colorSections
    case insetsList

    var title: String {
        switch self {
        case .styles:
            return "Styles"
        case .cellStyles:
            return "Cell Styles"
        case .accessoryTypes:
            return "Accessory Types"
        case .colorCells:
            return "Color Cells"
        case .noneSeparator:
            return "None Separator"
        case .selectedColors:
            return "Selected Colors"
        case .colorSections:
            return "Color Sections"
        case .insetsList:
            return "Insets List"
        }
    }

    var id: Int {
        return rawValue
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Appearances")) {
                    ForEach(AppearancesMenu.allCases) { menu in
                        self.containedView(menu: menu).listItemTint(.red)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    private func containedView(menu: AppearancesMenu) -> AnyView {
        switch menu {
        case .styles:
            return AnyView(NavigationLink(destination: StylesView(title: menu.title)) { Text(menu.title) })
        case .cellStyles:
            return AnyView(NavigationLink(destination: CellStylesView(title: menu.title)) { Text(menu.title) })
        case .accessoryTypes:
            return AnyView(NavigationLink(destination: AccessoryTypesView(title: menu.title)) { Text(menu.title) })
        case .colorCells:
            return AnyView(NavigationLink(destination: ColorCellsView(title: menu.title)) { Text(menu.title) })
        case .noneSeparator:
            return AnyView(NavigationLink(destination: NoneSeparatorView(title: menu.title)) { Text(menu.title) })
        case .selectedColors:
            return AnyView(NavigationLink(destination: SelectedColorsView(title: menu.title)) { Text(menu.title) })
        case .colorSections:
            return AnyView(NavigationLink(destination: ColorSectionsView(title: menu.title)) { Text(menu.title) })
        case .insetsList:
            return AnyView(NavigationLink(destination: InsetsListView(title: menu.title)) { Text(menu.title) })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

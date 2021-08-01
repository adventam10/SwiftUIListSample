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

enum OperationsMenu: Int, CaseIterable, Identifiable {

    case multiSelection1
    case multiSelection2
    case editCells
    case unselectableParts
    case contextMenu
    case accordion
    case singleSelection1

    var title: String {
        switch self {
        case .multiSelection1:
            return "Multi Selection1"
        case .multiSelection2:
            return "Multi Selection2"
        case .editCells:
            return "Edit Cells"
        case .unselectableParts:
            return "Unselectable Parts"
        case .contextMenu:
            return "Context Menu"
        case .accordion:
            return "Accordion"
        case .singleSelection1:
            return "Single Selection"
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

                Section(header: Text("Operations")) {
                    ForEach(OperationsMenu.allCases) { menu in
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

    private func containedView(menu: OperationsMenu) -> AnyView {
        switch menu {
        case .multiSelection1:
            return AnyView(NavigationLink(destination: MultiSelection1View(title: menu.title)) { Text(menu.title) })
        case .multiSelection2:
            return AnyView(NavigationLink(destination: MultiSelection2View(title: menu.title)) { Text(menu.title) })
        case .editCells:
            return AnyView(NavigationLink(destination: EditCellsView(title: menu.title)) { Text(menu.title) })
        case .unselectableParts:
            return AnyView(NavigationLink(destination: UnselectablePartsView(title: menu.title)) { Text(menu.title) })
        case .contextMenu:
            return AnyView(NavigationLink(destination: ContextMenuView(title: menu.title)) { Text(menu.title) })
        case .accordion:
            return AnyView(NavigationLink(destination: AccordionView(title: menu.title)) { Text(menu.title) })
        case .singleSelection1:
            return AnyView(NavigationLink(destination: SingleSelection1View(title: menu.title)) { Text(menu.title) })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

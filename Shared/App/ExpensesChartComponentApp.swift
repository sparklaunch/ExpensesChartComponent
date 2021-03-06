//
//  ExpensesChartComponentApp.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/26.
//

import SwiftUI

@main
struct ExpensesChartComponentApp: App {
    @StateObject private var dataManager: DataManager = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataManager)
        }
    }
}

//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 16) {
                BalanceView()
                ChartView()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataManager())
    }
}

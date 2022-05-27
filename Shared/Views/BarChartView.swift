//
//  BarChartView.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/27.
//

import SwiftUI

struct BarChartView: View {
    @EnvironmentObject private var dataManager: DataManager
    @State private var bars: [Bar] = []
    var body: some View {
        VStack {
            ForEach(bars, id: \.day) { bar in
                Text(bar.day)
            }
        }
        .onAppear {
            dataManager.fetchData()
            if let decodedData = dataManager.decodedData {
                bars = decodedData
            }
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
            .environmentObject(DataManager())
            .previewLayout(.sizeThatFits)
    }
}

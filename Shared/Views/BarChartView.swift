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
    private var highest: Double {
        let sortedBars = bars.sorted {
            $0.amount > $1.amount
        }
        return sortedBars.first?.amount ?? .zero
    }
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: 12) {
                ForEach(bars, id: \.day) { bar in
                    BarView(amount: bar.amount, isHighest: bar.amount == highest)
                }
            }
            .padding(.top, 24)
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

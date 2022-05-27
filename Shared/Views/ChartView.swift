//
//  ChartView.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/27.
//

import SwiftUI

struct ChartView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(alignment: .leading) {
                ChartTitleView()
                BarChartView()
            }
            .padding(24)
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
            .environmentObject(DataManager())
            .padding()
            .padding(.vertical, 120)
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}

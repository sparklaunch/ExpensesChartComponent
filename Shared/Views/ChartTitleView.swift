//
//  ChartTitleView.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/27.
//

import SwiftUI

struct ChartTitleView: View {
    var body: some View {
        Text("Spending - Last 7 days")
            .font(.title.bold())
            .foregroundColor(.init("TitleColor"))
    }
}

struct ChartTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ChartTitleView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}

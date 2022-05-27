//
//  BarView.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/27.
//

import SwiftUI

struct BarView: View {
    let amount: Double
    var isHighest = false
    var body: some View {
        RoundedRectangle(cornerRadius: 5, style: .continuous)
            .fill(isHighest ? Color("EmphasisColor") : Color("BarColor"))
            .frame(height: amount * 4)
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(amount: 0.5)
            .previewLayout(.sizeThatFits)
    }
}

//
//  TotalView.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/28.
//

import SwiftUI

struct TotalView: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Total this month")
                    .font(.title3)
                    .foregroundColor(.init("TextColor"))
                Text("$478.33")
                    .font(.largeTitle.bold())
                    .foregroundColor(.init("TitleColor"))
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("+2.4%")
                    .bold()
                    .foregroundColor(.init("TitleColor"))
                Text("from last month")
                    .font(.title3)
                    .foregroundColor(.init("TextColor"))
            }
        }
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}

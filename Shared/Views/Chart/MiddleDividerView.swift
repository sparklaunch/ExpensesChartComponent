//
//  MiddleDividerView.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/28.
//

import SwiftUI

struct MiddleDividerView: View {
    var body: some View {
        Divider()
            .frame(height: 2)
            .background(Color("BackgroundColor"))
            .padding(.vertical, 4)
    }
}

struct MiddleDividerView_Previews: PreviewProvider {
    static var previews: some View {
        MiddleDividerView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}

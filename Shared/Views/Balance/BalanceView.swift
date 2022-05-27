//
//  BalanceView.swift
//  Expenses Chart Component (iOS)
//
//  Created by Jinwook Kim on 2022/05/27.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        ZStack {
            Color("BarColor")
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("My balance")
                        .font(.title3)
                        .foregroundColor(.white)
                    Text("$921.48")
                        .font(.title.bold())
                        .foregroundColor(.white)
                }
                Spacer()
                Image(decorative: "Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 48)
            }
            .padding(24)
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .padding()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
